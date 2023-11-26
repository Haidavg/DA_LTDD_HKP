import 'package:flutter/material.dart';
import 'package:purchee_official/page4.dart';

class Phuongthucthanhtoan extends StatefulWidget {
  const Phuongthucthanhtoan({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PhuongthucthanhtoanState createState() => _PhuongthucthanhtoanState();
}

enum SingingCharacter { lafayette, jefferson }

class _PhuongthucthanhtoanState extends State<Phuongthucthanhtoan> {
  SingingCharacter? _character = SingingCharacter.lafayette;

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
          'Phương thức thanh toán',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                    child: Text(
                      'Các phương thức được liên kết',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromARGB(255, 173, 173, 173)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/zalopay.png',
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text('ZaloPay****3240'),
                              ),
                              ElevatedButton(
                                onPressed: null,
                                child: Text('hiện tại'),
                              ),
                            ],
                          )),
                      Expanded(
                        flex: 1,
                        child: Radio<SingingCharacter>(
                          value: SingingCharacter.lafayette,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(
                              () {
                                _character = value;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/anh4.jpg',
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text('Tiền mặt'),
                              ),
                            ],
                          )),
                      Expanded(
                        flex: 1,
                        child: Radio<SingingCharacter>(
                          value: SingingCharacter.jefferson,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(
                              () {
                                _character = value;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 211, 211, 211),
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                    child: Text(
                      'Thêm phương thức khác',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromARGB(255, 173, 173, 173)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/5.png',
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text('Moca Wallet'),
                              ),
                            ],
                          )),
                      const Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 165, 165, 165),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/6.jpg',
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text('Thẻ'),
                              ),
                            ],
                          )),
                      const Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 165, 165, 165),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/7.jpg',
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text('MOMO'),
                              ),
                            ],
                          )),
                      const Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 165, 165, 165),
                          ),
                        ),
                      ),
                    ],
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
