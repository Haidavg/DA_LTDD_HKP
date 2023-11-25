import 'package:flutter/material.dart';
import 'package:purchee_official/gio_hang3.dart';
import 'package:purchee_official/index.dart';
import 'package:purchee_official/thanhtoan2.dart';
import 'homepage2.dart';

class ChiTietSanPham extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChiTietSanPhamState();
  }
}

class ChiTietSanPhamState extends State<ChiTietSanPham> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TrangChu()));
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          // Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          //   Image.asset(
          //     'images/anh1.jpg',
          //   ),
          // ]),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.35),
            height: size.height * 0.75,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 163, 164, 165),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height * 0.45,
              right: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 210),
                      child: Text(
                        'Trà sen vàng ',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Text(
                        '64.000 VNĐ',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text('dsadasdfafsdfsdfsdfsdsdfdssf'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.05,
                    right: 20,
                  ),
                  height: 2,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.15,
                    right: 20,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        child: ElevatedButton(
                          child: Text(
                            'S',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: ElevatedButton(
                          child: Text(
                            'M',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: ElevatedButton(
                          child: Text(
                            'L',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 255, 255, 255))),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.90, left: 10, right: 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_left_outlined),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.90, left: 10, right: 10),
                child: Text('1'),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.90, left: 10, right: 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_right_outlined),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.90, right: 20, left: 200),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    child: Text('Đặt hàng'),
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gio_Hang()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
