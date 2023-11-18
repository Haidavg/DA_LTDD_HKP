import 'package:flutter/material.dart';
import 'package:purchee_official/doiMK.dart';
import 'package:purchee_official/giohang_test.dart';
import 'package:purchee_official/infor.dart';
import 'package:purchee_official/menu.dart';
import 'dangky.dart';
import 'main.dart';
import 'package:purchee_official/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.white),
              // ),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/logo.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: const Text(
                    "Đăng Nhập",
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
                        labelText: "Tên tài khoản",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        hintText: 'Tên tài khoản',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Nhập mật khẩu",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(320, 0, 0, 20),
                  child: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Quên mật khẩu?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Column(children: [
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
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => CarouselSliderExample(),
                          ),
                          (route) => false,
                        );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Test()));
                      },
                      child: const Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text('Đăng nhập',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                ]),
                Container(
                    padding:
                        const EdgeInsets.only(top: 30, bottom: 30, left: 100),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(children: [
                              TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Chưa có tài khoản?',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            ]),
                            Column(children: [
                              TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .popUntil((route) => route.isFirst);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Dangky()));
                                  },
                                  child: const Text(
                                    'Đăng ký',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ]),
                          ],
                        )
                      ],
                    ))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
