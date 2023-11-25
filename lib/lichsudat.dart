import 'package:flutter/material.dart';
import 'package:purchee_official/page4.dart';

class LichSu extends StatefulWidget {
  const LichSu({super.key});

  @override
  State<LichSu> createState() => _LichSuState();
}

class _LichSuState extends State<LichSu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 137, 137, 137),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Page4()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          child: Text(
            'Lịch sử mua hàng',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Trà sen vàng\nCHỌN KÍCH CỠ: Size M\n\n\n65.000 VNĐ',
                                          style: TextStyle(fontSize: 13),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/5.png',
                                          width: 120,
                                          height: 130,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )))),
            Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Trà sen vàng\nCHỌN KÍCH CỠ: Size M\n\n\n65.000 VNĐ',
                                          style: TextStyle(fontSize: 13),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/5.png',
                                          width: 120,
                                          height: 130,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )))),
            Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Trà sen vàng\nCHỌN KÍCH CỠ: Size M\n\n\n65.000 VNĐ',
                                          style: TextStyle(fontSize: 13),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/5.png',
                                          width: 120,
                                          height: 130,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )))),
          ],
        ),
      ),
    );
  }
}
