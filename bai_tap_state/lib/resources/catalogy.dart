import 'package:flutter/material.dart';
class Catalogy extends StatelessWidget {
  final String? nameCatalogy; 
  const Catalogy({Key? key,required this.nameCatalogy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top:10),
      width: MediaQuery.of(context).size.width,
      color:Colors.green,
      child:Text(nameCatalogy!,style: TextStyle(
        fontSize: 20,
        // foreground: Paint()
        //   ..style = PaintingStyle.stroke
        //   ..strokeWidth = 6
        //   ..color = Colors.blue[700]!,
        // background: Paint()
        //   ..strokeWidth = 30.0
        //   ..color = Colors.grey
        //   ..style = PaintingStyle.stroke
        //   ..strokeJoin = StrokeJoin.round
      ),
    )
      ,);
  }
}
