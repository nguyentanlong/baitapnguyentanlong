import 'package:flutter/material.dart';
class CustomButton  extends StatelessWidget {
  final onPressed;
  final String buttonText;
  const CustomButton ({Key? key, required this.onPressed,required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          margin: const EdgeInsets.only(top: 30, left: 20, right: 20,),
          padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(
                  Radius.circular(8.0)
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 8.0,
                    spreadRadius: 2.0
                )
              ]
          ),
          child: Text(buttonText)
      ),
    );

  }
}
