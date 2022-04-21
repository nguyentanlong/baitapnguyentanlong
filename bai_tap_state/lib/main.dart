import 'package:flutter/material.dart';
import 'views/screenlong.dart';

void main() {
  runApp(const LongFlutter());
}

class LongFlutter extends StatelessWidget {
  const LongFlutter({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code theo tree/ chuyên nghiệp',
      home: ScreenLong(),
    );
  }
}