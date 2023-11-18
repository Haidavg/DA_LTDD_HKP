import 'package:flutter/material.dart';

void main() {
  runApp(const ChiTietHoaDon());
}

class ChiTietHoaDon extends StatelessWidget {
  const ChiTietHoaDon({Key? key}) : super(key: key);

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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
          child: Row(
            children: [
              Icon(Icons.arrow_back_sharp),
              Container(
                width: 100,
              ),
              Text(
                'Chi tiết đơn hàng',
                style: TextStyle(
                    color: Colors.deepOrange,
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
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepOrange),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                                'Hủy đơn hàng',
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
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepOrange),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                                'Hủy đơn hàng',
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
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepOrange),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                                'Hủy đơn hàng',
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
      ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
