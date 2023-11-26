import 'package:flutter/material.dart';
import 'package:purchee_official/page4.dart';

class Lichsumuahang extends StatefulWidget {
  const Lichsumuahang({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LichsumuahangState createState() => _LichsumuahangState();
}

class _LichsumuahangState extends State<Lichsumuahang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text(
          'Lịch sử mua hàng',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'images/5.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Trà sữa lài - Trà lài',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const Text('19 thg 11 2023, 10:51'),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextButton.icon(
                              onPressed: null,
                              icon: const Icon(
                                Icons.arrow_circle_right,
                                color: Colors.blue,
                              ),
                              label: const Text(
                                'Đặt lại',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        '71.000đ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
