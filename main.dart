import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ManHinhChinh(),
    );
  }
}
class ManHinhChinh extends StatefulWidget {
  const ManHinhChinh({Key? key}) : super(key: key);

  @override
  State<ManHinhChinh> createState() => _ManHinhChinhState();
}

class _ManHinhChinhState extends State<ManHinhChinh> {
  TextEditingController diemToan= TextEditingController();
  TextEditingController diemAnh= TextEditingController();
  TextEditingController diemVan= TextEditingController();
  double result=0.0;
  String danhGia="Chưa nhập thông tin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tính Trung Bình Cộng & Đánh Giá"),),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Điểm Toán",
                hintText: "Nhập điểm toán",
              ),
              controller: diemToan,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Điểm Anh",
                hintText: "Nhập điểm anh",
              ),
              controller: diemAnh,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Điểm Văn",
                hintText: "Nhập điểm văn",
              ),
              controller: diemVan,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                result=(double.parse(diemToan.text)+double.parse(diemAnh.text)+double.parse(diemVan.text))/3;
                if(result<=5) { danhGia="Xếp loại dưới trung binh: $result";}
                else if(5<=result && result<=7.5) {
                   danhGia="Xếp loại trung bình khá: $result";}
                else { danhGia="Xếp loại giỏi/xuất sắc: $result";}
              });
            }, child: Text("Tính điểm & đánh giá")),
            Card(child: Column(
              children: [
                Text("***Kết quả và đánh giá***"),
                const SizedBox(width: 20,),
                Text(danhGia),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}



