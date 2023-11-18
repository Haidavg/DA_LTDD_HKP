import 'package:flutter/material.dart';
import 'package:purchee_official/doiMK.dart';
import 'package:purchee_official/login.dart';
import 'package:purchee_official/main.dart';
import 'package:purchee_official/haidang.dart';
import 'package:purchee_official/haidang2.dart';

void main() {
  runApp(const Infor());
}

class Infor extends StatelessWidget {
  const Infor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
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
                      onPressed: () {},
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
                                  builder: (context) => const Start()));
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
