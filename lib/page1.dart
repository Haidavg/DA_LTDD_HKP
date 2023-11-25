import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key, });

  

  @override
  State<Page1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Page1> {
  final List<String> imageUrls = [
    'images/anh1.jpg',
    'images/anh2.jpg',
    'images/anh3.jpg',
    'images/anh4.jpg',
  ];

  final CarouselController carouselController = CarouselController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                hintText: 'Tìm kiếm',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }),
              items: imageUrls.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.fitWidth,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageUrls.map((image) {
              int index = imageUrls.indexOf(image);
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.red : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}