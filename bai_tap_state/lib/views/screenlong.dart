import 'package:bai_tap_state/resources/card_info.dart';
import 'package:bai_tap_state/resources/catalogy.dart';
import 'package:bai_tap_state/resources/check_box_vip.dart';
import 'package:bai_tap_state/resources/custom_button.dart';
import 'package:bai_tap_state/resources/input_widget_custom.dart';
import 'package:bai_tap_state/resources/strings.dart';
import 'package:bai_tap_state/resources/input_widget.dart';
import 'package:flutter/material.dart';

import '../resources/dialog_alter.dart';


class ScreenLong extends StatefulWidget {
  const ScreenLong({Key? key}) : super(key: key);

  @override
  State<ScreenLong> createState() => _ScreenLongState();
}

class _ScreenLongState extends State<ScreenLong> {
  TextEditingController? nameCumtomer, quantityBook, total;
  double? quantity;// TOTALCHANGE;
  bool valueCheckBox=false;
  bool showHide1=false;
  bool autoFocus=false;
  int KH=0;int VIP =0; double DT=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameCumtomer = TextEditingController();
    quantityBook = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TITLE_APP),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Row(
                children: [
                  // Text(LABLE1),
                  Expanded(
                      flex: 1,
                      child: Text(LABLE1)
                  ),
                  //Text(LABLE1),
                  Expanded(flex: 2,
                    child:InputWidget(lableText: LABLE1, hintText: HINT_CONTROLLER, controler: nameCumtomer,autoFocus: autoFocus,),
                  ),
                ],
              ),
              Row(
                children: [
                  // Text(LABLE1),
                  Expanded(
                      flex: 1,
                      child: Text(LABLE2)
                  ),
                  //Text(LABLE1),
                  Expanded(flex: 2,
                    child:InputWidget(lableText: LABLE_SACH_CONTROLLER, hintText: HINT_SACH_CONTROLLER, controler: quantityBook,autoFocus: autoFocus,),
                  ),
                ],
              ),
              Row(
                children: [
                  // Text(LABLE1),
                  Expanded(
                      flex: 1,
                      child: Text(LABLE3)
                  ),
                  //Text(LABLE1),
                  Expanded(flex: 2,
                    child:InputWidgetCustom(hintTextc: TOTAL, controlerc: total,),
                  ),
                ],
              ),
              // CheckBoxVip(titleCheckbox: TEXT_CHECKBOX),
              Row(children: [
                Expanded(
                    flex: 1,
                    child: Text("")
                ),
                Expanded(
                    flex:2,
                    child:
                    ListTile(
                    leading: Checkbox(
                      value: valueCheckBox,
                      onChanged: (value) {
                        setState(() {
                          valueCheckBox =!valueCheckBox;
                          // print(value);
                        });
                      },
                    ),
                    title: Text(TEXT_CHECKBOX),
                  ),
                ),
                ],
              ),
              Center(child: Row(
                children: [
                  //Expanded(
                   //   flex: 1,
                     // child:
                      CustomButton(onPressed: (){
                        setState(() {
                          tinhToan();
                        });
                      }, buttonText: TEXT_BUTTON_1),
                  //),
                  //Expanded(
                    //flex: 1,
                    //child:
                    CustomButton(onPressed: (){
                      setState(() {
                        tinhToan();
                        quantityBook!.clear();
                        nameCumtomer!.clear();
                        showHide1=autoFocus=true;
                        //total!.clear(); ko có tác dụng

                        // CardInfo(LABLE_KH: LABLE_KH, LABLE_VIP: LABLE_VIP, LABLE_DOANH_THU: LABLE_DOANH_THU, totalCustomer: KH, totalVip: VIP, doanhThu: DT);
                      });
                    }, buttonText: TEXT_BUTTON_2),
                  //),
                  //Expanded(
                    //flex: 1,
                    //child:
                    CustomButton(onPressed: (){
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                              elevation: 24.0,
                              backgroundColor: Colors.white,
                              title: Text("Thông Báo Thống Kê!"),
                              content: CardInfo(LABLE_KH: LABLE_KH1, LABLE_VIP: LABLE_VIP1, LABLE_DOANH_THU: LABLE_DOANH_THU1, totalCustomer: KH, totalVip: VIP, doanhThu: DT, showHide: true),
                              actions: <Widget>[
                                FlatButton(
                                child: Text("No"),
                                onPressed: () => Navigator.pop(context),
                                ),
                                FlatButton(
                                child: Text("Yes"),
                                onPressed: () => Navigator.pop(context),
                                ),
                              ],
                        )
                          );

                      });
                    }, buttonText: TEXT_BUTTON_3),
                  //),
                ],
              ),

              ),

              Catalogy(nameCatalogy: NAME_CATALOGY),

              CardInfo(LABLE_KH: LABLE_KH1, LABLE_VIP: LABLE_VIP1, LABLE_DOANH_THU: LABLE_DOANH_THU1, totalCustomer: KH, totalVip: VIP, doanhThu: DT, showHide: showHide1)
              // Column(
              //   children: [
              //       Expanded(flex:1,
              //         child: CardInfo(LABLE_KH: LABLE_KH1, LABLE_VIP: LABLE_VIP1, LABLE_DOANH_THU: LABLE_DOANH_THU1, totalCustomer: KH, totalVip: VIP, doanhThu: DT),),
              //   ],
              // ),
            ],
          )
        ),
      ),
    );

  }
  void tinhToan(){
    quantity = int.parse(quantityBook!.text)*20000;
    KH+=1;
    if((quantity!=null || quantity==0)&&valueCheckBox!=false){
      quantity=quantity!*0.9;
      VIP+=1;
      DT+=quantity!;
      TOTAL= quantity!.toStringAsFixed(2);
    }else if((quantity!=null || quantity==0)){
      DT+=quantity!;
      TOTAL= quantity!.toStringAsFixed(2);
    }
  }
}
