import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key, }) : super(key: key);

 

  @override
  State<Page2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
          child: Row(
            children: [
              InkWell(
                child: Icon(Icons.arrow_back_sharp),
                onTap: () {}
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomeScreen())),
              ),
              Container(
                width: 100,
              ),
              Text(
                'Giỏ Hàng',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            children: [
              Container(
                child: Icon(Icons.accessibility_sharp),
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Áo thun nam Gucci'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('399.000 đ'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (() {}),
                            child: Container(
                              //   margin: EdgeInsets.all(12.0),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 45,
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'x1',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (() {}),
                            child: Container(
                              //   margin: EdgeInsets.all(12.0),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: InkWell(
                              onTap: (() {}),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.red),
                                width: 110,
                                height: 35,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Mua',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )),
                        InkWell(
                          onTap: (() {}),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey),
                            width: 110,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Xóa',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            children: [
              Container(
                child: Icon(Icons.accessibility_sharp),
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Áo thun nam Gucci'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('399.000 đ'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (() {}),
                            child: Container(
                              //   margin: EdgeInsets.all(12.0),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 45,
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'x1',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (() {}),
                            child: Container(
                              //   margin: EdgeInsets.all(12.0),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: InkWell(
                              onTap: (() {}),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.red),
                                width: 110,
                                height: 35,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Mua',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )),
                        InkWell(
                          onTap: (() {}),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey),
                            width: 110,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Xóa',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            children: [
              Container(
                child: Icon(Icons.accessibility_sharp),
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Áo thun nam Gucci'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('399.000 đ'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (() {}),
                            child: Container(
                              //   margin: EdgeInsets.all(12.0),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 45,
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'x1',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (() {}),
                            child: Container(
                              //   margin: EdgeInsets.all(12.0),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: InkWell(
                              onTap: (() {}),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.red),
                                width: 110,
                                height: 35,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Mua',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )),
                        InkWell(
                          onTap: (() {}),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey),
                            width: 110,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Xóa',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tổng tiền :',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '0đ',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Column(children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.red,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                // Navigator.of(context).popUntil((route) => route.isFirst);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => FavoritesScreen()));
              },
              child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('Đặt hàng',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)))),
        ]),
      ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
