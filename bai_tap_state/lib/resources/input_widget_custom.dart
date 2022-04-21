import 'package:flutter/material.dart';
// import 'strings.dart';
class InputWidgetCustom extends StatelessWidget {
  // final String lableTextc;
  final String hintTextc;
  final controlerc;
  const InputWidgetCustom({Key? key,required this.hintTextc,required this.controlerc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 5, right: 10),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.orange, filled: true,
              // labelText: lableTextc,
              hintText: hintTextc,
              enabled: false
          ),
          controller: controlerc,
        )
    );
  }
}
