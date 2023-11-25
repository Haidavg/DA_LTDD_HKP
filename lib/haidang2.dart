import 'package:flutter/material.dart';
import 'package:purchee_official/haidang.dart';

class HaiDang2 extends StatefulWidget {
  @override
  State<HaiDang2> createState() => _HaiDangState();
}

class _HaiDangState extends State<HaiDang2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HaiDang()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                SizedBox(height: 20),
                RowItem(text1: 'Tên đăng nhập:', text2: 'acbdefghijk'),
                SizedBox(height: 15),
                RowItem(text1: 'Mật khẩu:', text2: '********'),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Số điện thoại',
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Địa chỉ',
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HaiDang()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(280.0, 40.0),
                  ),
                  child: Text('Lưu thông tin'),
                ),
              ],
            ),
          ),
        ));
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
