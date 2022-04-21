import 'package:flutter/material.dart';
class CardInfo extends StatelessWidget {
  final String? LABLE_KH;
  final String? LABLE_VIP;
  final String? LABLE_DOANH_THU;
  final int? totalCustomer;
  final int? totalVip;
  final double? doanhThu;
  final bool? showHide;
  const CardInfo({Key? key,required this.LABLE_KH,required this.LABLE_VIP,required this.LABLE_DOANH_THU,
    required this.totalCustomer,required this.totalVip,required this.doanhThu,required this.showHide}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(visible:showHide!,child:Container(
      padding: const EdgeInsets.only(top: 30),
      child: Card(
        child: Container(
          padding: const EdgeInsets.only(right: 15, top: 20, bottom: 20, left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(LABLE_KH!)),

                  const SizedBox(width: 20,),
                  Expanded(
                      flex: 1,
                      child: Text(totalCustomer.toString()))
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(LABLE_VIP!)),

                  const SizedBox(width: 20,),
                  Expanded(
                    flex: 1,
                    child: Text(totalVip.toString()),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(LABLE_DOANH_THU!)),

                  const SizedBox(width: 20,),
                  Expanded(
                    flex: 1,
                    child: Text(doanhThu.toString()),
                  )
                ],
              )
            ],
          ),
        ),

      ),
    ),

    );

  }
}
