import 'package:flutter/material.dart';
import 'package:purchee_official/giohang_test.dart';
import 'dangky.dart';
import 'login.dart';
import 'main.dart';
import 'doiMK.dart';
import 'infor.dart';
import 'giohang_test.dart';
import 'giohang.dart';
import 'thanhtoan.dart';
import 'chitietdonhang.dart';
import 'menu.dart';
import 'homepage.dart';
import 'test.dart';

void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  const Start({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        // margin:  EdgeInsets.all(10),
        decoration: const BoxDecoration(color: Colors.white),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/logo.png'),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10.0, right: 10.0, bottom: 20.0),
                // decoration: BoxDecoration(
                //   border: Border.all(width: 1, color: Colors.white),
                // ),
                child: Container(
                  child: Column(children: [
                    ElevatedButton(
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: const Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text('Đăng nhập',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)))),
                  ]),
                )),
            Container(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10.0, right: 10.0, bottom: 20.0),
                child: Container(
                  child: Column(children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          minimumSize: const Size.fromHeight(50),
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
                                  builder: (context) => const Dangky()));
                        },
                        child: const Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text('Đăng ký',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)))),
                  ]),
                )),
          ],
        ),
      ),
    );
  }
}
