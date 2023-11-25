import 'package:flutter/material.dart';
import 'homepage2.dart';

class ThanhToanTong extends StatefulWidget {
  const ThanhToanTong({super.key});

  @override
  State<ThanhToanTong> createState() => _ThanhToanTongState();
}

class _ThanhToanTongState extends State<ThanhToanTong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 137, 137, 137),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHomePageChinh()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          child: Text(
            'Xác Nhận Đơn Hàng',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Địa chỉ: ',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            '65 Huỳnh Thúc Kháng, Q1, TP HCM',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Thêm hướng dẫn giao hàng...',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                          onChanged: null,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Họ Tên\nMai Nhựt Minh',
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w100),
                        ),
                        Text(
                          'Thời gian dự kiến\n15-30 phút',
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
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
                            flex: 4,
                            child: Container(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: [
                                  Text(
                                    'Sản phẩm đã chọn\ntên',
                                    style: TextStyle(fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ), // Your content for the first column
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: [
                                  Text(
                                    'Số lượng',
                                    style: TextStyle(fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ), // Your content for the first column
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: [
                                  Text(
                                    'Giá Tiền',
                                    style: TextStyle(fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ), // Your content for the first column
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //sp
                        children: [
                          Expanded(
                            flex: 4,
                            child: Card(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Image.asset(
                                      'images/5.png', // Đường dẫn đến hình ảnh
                                      fit: BoxFit.cover,
                                    ),
                                    title: const Text('Trà vải lài'),
                                    subtitle: const Text('Size XXL'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '60.000',
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                      Row(
                        //sp
                        children: [
                          Expanded(
                            flex: 4,
                            child: Card(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Image.asset(
                                      'images/5.png', // Đường dẫn đến hình ảnh
                                      fit: BoxFit.cover,
                                    ),
                                    title: const Text('Trà vải lài'),
                                    subtitle: const Text('Size XXL'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '60.000',
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                      Row(
                        //sp
                        children: [
                          Expanded(
                            flex: 4,
                            child: Card(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Image.asset(
                                      'images/5.png', // Đường dẫn đến hình ảnh
                                      fit: BoxFit.cover,
                                    ),
                                    title: const Text('Trà vải lài'),
                                    subtitle: const Text('Size XXL'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '60.000',
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Row(
                                children: [
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.add),
                                  ),
                                  Text('Thêm'),
                                ],
                              )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Row(
                                children: [
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.delete),
                                  ),
                                  Text('Xóa'),
                                ],
                              )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Row(
                                children: [
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.create),
                                  ),
                                  Text('Thêm'),
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Column(children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Tổng cộng',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Thành tiền',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '135.000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Phí giao hàng',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '18.000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Chọn giảm giá',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '-18.000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            '',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '-30.000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Số tiền cần thanh toán',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '105.000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
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
                            child: Text(
                              'Phương thức thanh toán',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'images/9.png',
                              width: 50,
                              height: 40,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Tiền mặt',
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Icon(Icons.arrow_forward_ios_outlined)),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: ElevatedButton(
                                onPressed:
                                    null, // Change to your onPressed logic
                                child: Text(
                                  'Đặt Hàng',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
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
