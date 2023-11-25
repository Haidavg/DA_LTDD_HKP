import 'package:flutter/material.dart';
import 'package:purchee_official/DanhSachTra.dart';
import 'package:purchee_official/chitietsanpham.dart';
import 'package:purchee_official/gio_hang3.dart';
import 'package:purchee_official/giohang_test.dart';
import 'package:purchee_official/lichsudat.dart';
import 'index.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

class MyHomePageChinh extends StatefulWidget {
  const MyHomePageChinh({
    key,
  });

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageChinh> {
  int _currentIndex = 0;
  String name = '';

  final List<Widget> _pages = [
    TrangChu(),
    Gio_Hang(),
    DanhSachTra(),
    Page4(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          items: [
            new BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Trang chủ',
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_sharp),
              label: 'Giỏ hàng',
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.add_card_sharp),
              label: 'Thanh toán',
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Tài khoản',
            ),
          ],
        ),
      ),
    );
  }
}
