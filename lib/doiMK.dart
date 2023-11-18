import 'package:flutter/material.dart';
import 'package:purchee_official/haidang.dart';
import 'package:purchee_official/infor.dart';
import 'package:flutter/material.dart';
import 'package:purchee_official/giohang_test.dart';
import 'package:purchee_official/login.dart';
import 'package:purchee_official/menu.dart';
import 'main.dart';

void main() {
  runApp(const DoiMK());
}

class DoiMK extends StatelessWidget {
  const DoiMK({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Infor()));
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        // margin:  EdgeInsets.all(10),
        decoration: const BoxDecoration(color: Colors.white),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.white),
              // ),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/avt.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 5, bottom: 30, right: 5, left: 5),
                  child: const Text(
                    "Đổi mật khẩu",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Mật khẩu cũ",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        hintText: 'Nhập mật khẩu cũ',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Mật khẩu mới",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        hintText: 'Nhập mật khẩu mới',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Xác nhận mật khẩu mới",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        hintText: 'Xác nhận mật khẩu',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 2),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HaiDang()));
                      },
                      child: const Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text('Đổi mật khẩu',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                ),
              ]),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
