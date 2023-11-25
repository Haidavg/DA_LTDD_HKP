import 'package:flutter/material.dart';
import 'package:purchee_official/homepage2.dart';
import 'package:purchee_official/thanhtoan.dart';
import 'package:purchee_official/thanhtoan2.dart';

class Gio_Hang extends StatefulWidget {
  const Gio_Hang({super.key});

  @override
  State<Gio_Hang> createState() => _Gio_HangState();
}

class _Gio_HangState extends State<Gio_Hang> {
  bool? isChecked1 = true;
  bool? isChecked2 = true;
  bool? isChecked3 = true;
  int quantity1 = 0;
  int quantity2 = 0;
  int quantity3 = 0;

  void increment1() {
    setState(() {
      quantity1++;
    });
  }

  void decrement1() {
    setState(() {
      if (quantity1 > 0) {
        quantity1--;
      }
    });
  }

  void increment2() {
    setState(() {
      quantity2++;
    });
  }

  void decrement2() {
    setState(() {
      if (quantity2 > 0) {
        quantity2--;
      }
    });
  }

  void increment3() {
    setState(() {
      quantity3++;
    });
  }

  void decrement3() {
    setState(() {
      if (quantity3 > 0) {
        quantity3--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 137, 137, 137),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyHomePageChinh()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          child: Text(
            'Giỏ hàng(3)',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Checkbox(
                                    value: isChecked1,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked1 = value;
                                      });
                                    },
                                  ),
                                ),
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
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'images/5.png',
                                              width: 120,
                                              height: 130,
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  icon: Icon(Icons.remove),
                                                  onPressed: decrement1,
                                                ),
                                                SizedBox(width: 16),
                                                Text(
                                                  '$quantity1',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                SizedBox(width: 16),
                                                IconButton(
                                                  icon: Icon(Icons.add),
                                                  onPressed: increment1,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
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
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Checkbox(
                                    value: isChecked2,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked2 = value;
                                      });
                                    },
                                  ),
                                ),
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
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'images/5.png',
                                              width: 120,
                                              height: 130,
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  icon: Icon(Icons.remove),
                                                  onPressed: decrement2,
                                                ),
                                                SizedBox(width: 16),
                                                Text(
                                                  '$quantity2',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                SizedBox(width: 16),
                                                IconButton(
                                                  icon: Icon(Icons.add),
                                                  onPressed: increment2,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
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
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Checkbox(
                                    value: isChecked3,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked3 = value;
                                      });
                                    },
                                  ),
                                ),
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
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'images/5.png',
                                              width: 120,
                                              height: 130,
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  icon: Icon(Icons.remove),
                                                  onPressed: decrement3,
                                                ),
                                                SizedBox(width: 16),
                                                Text(
                                                  '$quantity3',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                SizedBox(width: 16),
                                                IconButton(
                                                  icon: Icon(Icons.add),
                                                  onPressed: increment3,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )))),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, bottom: 20, right: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ThanhToanTong()));
                                }, // Change to your onPressed logic
                                child: Text(
                                  'Tới Đặt Hàng',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
