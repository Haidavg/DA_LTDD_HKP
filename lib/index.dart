import 'package:flutter/material.dart';
import 'package:purchee_official/DanhSachTra.dart';
import 'package:purchee_official/thanhtoan2.dart';
import 'chitietsanpham.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({super.key});

  @override
  State<TrangChu> createState() => _TrangChuState();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baarland Coffee - Trang Chủ',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class _TrangChuState extends State<TrangChu> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Tìm kiếm...',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              ),
              onChanged: (value) {},
            ),
          ),
        ),
        leadingWidth: MediaQuery.of(context).size.width * 0.8,
        actions: [
          Container(
            width: 100.0,
            height: 47.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: const Center(
              child: Text(
                'T',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/6.jpg', // Đường dẫn đến hình ảnh
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/7.jpg',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 0, 0, 0)
                              .withOpacity(0.3),
                          spreadRadius: 2.0,
                          blurRadius: 5.0,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DanhSachTra()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/11.jpg',
                                    width: 80,
                                    height: 70,
                                  ),
                                  const Text('Cà Phê'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DanhSachTra()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/12.jpg',
                                    width: 80,
                                    height: 70,
                                  ),
                                  const Text('Trà'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DanhSachTra()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/13.jpg',
                                    width: 80,
                                    height: 70,
                                  ),
                                  const Text('Đá xay'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DanhSachTra()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/14.jpg',
                                    width: 80,
                                    height: 70,
                                  ),
                                  const Text('Bánh Ngọt'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Sản phẩm bán chạy nhất sever',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Số lượng cột trong mỗi dòng
                      crossAxisSpacing: 8.0, // Khoảng cách giữa các cột
                      mainAxisSpacing: 8.0, // Khoảng cách giữa các dòng
                    ),
                    itemCount: 20, // Tổng số phần tử trong GridView
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChiTietSanPham(),
                                ),
                              );
                            },
                            child: Container(
                              height: 120.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(
                                    20.0), // Điều chỉnh giá trị theo ý muốn
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'images/5.png',
                                        width: 80,
                                        height: 70,
                                      ),
                                      Text('Trà sữa vị $index'),
                                      const Text('Giá 40000 VND')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThanhToanTong()));
            },
            child: Icon(Icons.add_shopping_cart),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                '99+', // Số lượng sản phẩm trong giỏ hàng
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
