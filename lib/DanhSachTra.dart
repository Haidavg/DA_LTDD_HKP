import 'package:flutter/material.dart';
import 'package:purchee_official/chitietsanpham.dart';
import 'package:purchee_official/gio_hang3.dart';
import 'package:purchee_official/homepage2.dart';
import 'package:purchee_official/index.dart';
import 'package:purchee_official/page4.dart';

class DanhSachTra extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DanhSachTraState();
  }
}

class DanhSachTraState extends State<DanhSachTra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePageChinh()));
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page4()));
                },
                icon: Icon(Icons.account_circle_rounded),
                color: Colors.black,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Tim Kiếm',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                  onTap: () {},
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gio_Hang()));
                },
                icon: Icon(Icons.shopping_cart),
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                'MÓN BÁN CHẠY NHẤT',
                style: TextStyle(fontSize: 20),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => ChiTietSanPham()),
                          ),
                        );
                      },
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Image.asset(
                              'images/anh2.jpg',
                              height: 100,
                              width: 100,
                            ),
                            Text('Trà sen vàng'),
                            Text('Giá: 40,000 VNĐ')
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/anh3.jpg',
                            height: 100,
                            width: 100,
                          ),
                          Text('Trà sen vàng'),
                          Text('Giá: 40,000 VNĐ')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/anh2.jpg',
                            height: 100,
                            width: 100,
                          ),
                          Text('Trà sen vàng'),
                          Text('Giá: 40,000 VNĐ')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/anh2.jpg',
                            height: 100,
                            width: 100,
                          ),
                          Text('Trà sen vàng'),
                          Text('Giá: 40,000 VNĐ')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 10,
                color: Colors.black26,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TRÀ CÁC LOẠI',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'images/anh1.jpg',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: Color.fromARGB(255, 208, 207, 207),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Trà sen vàng\n\n\n',
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.end,
                                    ),
                                    Text(
                                      '65.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/anh1.jpg',
                              height: 100,
                              width: 100,
                            )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: Color.fromARGB(255, 208, 207, 207),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Trà sen vàng\n\n\n',
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.end,
                                    ),
                                    Text(
                                      '65.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/anh1.jpg',
                              height: 100,
                              width: 100,
                            )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: Color.fromARGB(255, 208, 207, 207),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Trà sen vàng\n\n\n',
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.end,
                                    ),
                                    Text(
                                      '65.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/anh1.jpg',
                              height: 100,
                              width: 100,
                            )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: Color.fromARGB(255, 208, 207, 207),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Trà sen vàng\n\n\n',
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.end,
                                    ),
                                    Text(
                                      '65.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/anh1.jpg',
                              height: 100,
                              width: 100,
                            )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: Color.fromARGB(255, 208, 207, 207),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Trà sen vàng\n\n\n',
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.end,
                                    ),
                                    Text(
                                      '65.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.red),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
