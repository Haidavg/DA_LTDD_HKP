import 'package:flutter/material.dart';
import 'package:purchee_official/page4.dart';

class Uudai extends StatefulWidget {
  const Uudai({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UudaiState createState() => _UudaiState();
}

class _UudaiState extends State<Uudai> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
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
          'Ưu đãi',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Nhập mã khuyến mãi hoặc quà tại đây',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 235, 235, 235),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                onChanged: (value) {},
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            for (int i = 0; i < 10; i++)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/sale.jpg',
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Giảm 6k thêm ưu đãi bên dưới',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: TextButton.icon(
                                onPressed: null,
                                icon: const Icon(
                                  Icons.arrow_back_ios_rounded,
                                  size: 10,
                                  color: Colors.blue,
                                ),
                                label: const Text(
                                  'Thanh toán ít nhất 50.000đ',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            TextButton.icon(
                              onPressed: null,
                              icon: const Icon(
                                Icons.timer_rounded,
                                color: Colors.amber,
                                size: 20,
                              ),
                              label: const Text(
                                '2 ngày',
                                style: TextStyle(color: Colors.amber),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                          flex: 1,
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.green,
                              ))),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 211, 211, 211),
                    thickness: 1,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
