import 'package:flutter/material.dart';
import 'package:purchee_official/giohang.dart';
import 'package:purchee_official/giohang_test.dart';
import 'package:purchee_official/haidang.dart';
import 'package:purchee_official/infor.dart';
import 'package:purchee_official/thanhtoan.dart';
import "homepage.dart";
import 'package:purchee_official/haidang.dart';
import 'package:purchee_official/haidang2.dart';

//không phải chạy test này

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    CartBut(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BottomNavigationBar Example',
      theme: ThemeData(primarySwatch: Colors.red, hoverColor: Colors.red),
      home: Scaffold(
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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSliderExample();
    //CarouselSliderExample();
  }
}

class CartBut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GioHang();

    //const Gio_Hang();
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThanhToan();

    //ThanhToan();
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Infor();
    //   Đáng ra phải chạy cái này
    // Infor();
  }
}
