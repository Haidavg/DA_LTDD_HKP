import 'package:flutter/material.dart';
import 'package:purchee_official/haidang2.dart';
import 'package:purchee_official/infor.dart';

class HaiDang extends StatefulWidget {
  @override
  State<HaiDang> createState() => _HaiDangState();
}

class _HaiDangState extends State<HaiDang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Infor()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HaiDang2()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/avt.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'USER',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(height: 20),
            RowItem(text1: 'Tên đăng nhập:', text2: 'acbdefghijk'),
            SizedBox(height: 15),
            RowItem(text1: 'Mật khẩu:', text2: '********'),
            SizedBox(height: 15),
            RowItem(text1: 'Số điện thoại:', text2: '0987654321'),
            SizedBox(height: 15),
            RowItem(text1: 'Email:', text2: 'abc@gmail.com'),
            SizedBox(height: 15),
            RowItem(
                text1: 'Địa chỉ:',
                text2: '65 Huynh Thuc Khang. phuong Ben Nghe'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HaiDang2()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(280.0, 40.0),
              ),
              child: Text('Sửa thông tin'),
            ),
          ],
        ),
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String text1;
  final String text2;

  RowItem({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text1,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            text2,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
