import 'package:flutter/material.dart';
import 'package:purchee_official/lichsudat.dart';
import 'package:purchee_official/main2.dart';
import 'package:purchee_official/page1.dart';
import 'doiMK.dart';
import 'haidang.dart';

class Page4 extends StatefulWidget {
  const Page4({
    Key? key,
  }) : super(key: key);

  @override
  State<Page4> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Page1()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 150, 15, 15),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/avt.png'),
                        ),
                      ),
                      Text(
                        'Username',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'SDT',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ]),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HaiDang()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0)),
                              Text(
                                'Thôn tin cá nhân',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_rounded),
                          Container(
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {
                        // Navigator.of(context)
                        //     .popUntil((route) => route.isFirst);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DoiMK()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0)),
                              Text(
                                'Đổi mật khẩu',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_rounded),
                          Container(
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LichSu()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0)),
                              Text(
                                'Quản lý đơn hàng',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_rounded),
                          Container(
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Column(children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: const Size(400.0, 50.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login2()));
                        },
                        child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Text('Đăng xuất',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)))),
                  ]),
                )
              ]),
            )
          ]),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
