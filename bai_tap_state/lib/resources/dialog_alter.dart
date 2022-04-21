import 'package:flutter/material.dart';
class DialogAlter extends StatelessWidget {
  const DialogAlter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Thông báo thống kê'),
        content: SingleChildScrollView(
        child: ListBody(
        children:[
          Text('This is a demo alert dialog.'),
          Text('Would you like to approve of this message?'),
        ],
      ),
    )
    );
  }
}
