import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadarat/Customized/Glasscontainer.dart';

class Eyeglasses extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'itemId': 'Aviator Eyeglasses',
      'imagePath': 'assets/images/Aviator.jpeg',
      'type': 'Aviator',
      'rating': 4.5,
      'name': 'Aviator Eyeglasses',
      'info': 'Comfortable and stylish Aviator Eyeglasses',
      'price': 20.0,
      'discount': 5.0,
      'coupon': 'REGULAR5',
    },
    {
      'itemId': 'Polygon EyeGlasses',
      'imagePath': 'assets/images/polygon.jpeg',
      'type': 'Polygon',
      'rating': 4.0,
      'name': 'Polygon EyeGlasses',
      'info': 'Durable Polygon EyeGlasses',
      'price': 25.0,
      'discount': 3.0,
      'coupon': 'REGULAR3',
    },
    {
      'itemId': 'Square EyeGlasses',
      'imagePath': 'assets/images/Squaree.jpeg',
      'type': 'Square',
      'rating': 4.8,
      'name': 'Square EyeGlasses',
      'info': 'Elegant Square EyeGlasses',
      'price': 22.0,
      'discount': 4.0,
      'coupon': 'REGULAR4',
    },
    {
      'itemId': 'Round EyeGlasses',
      'imagePath': 'assets/images/roundd.jpeg',
      'type': 'Round',
      'rating': 4.2,
      'name': 'Round EyeGlasses',
      'info': 'Stylish Round EyeGlasses',
      'price': 23.0,
      'discount': 2.0,
      'coupon': 'REGULAR2',
    },
    {
      'itemId': 'Cat Eye EyeGlasses',
      'imagePath': 'assets/images/Cat.png',
      'type': 'Cat Eye',
      'rating': 4.7,
      'name': 'Cat Eye EyeGlasses',
      'info': 'Fashionable cat eye EyeGlasses',
      'price': 24.0,
      'discount': 3.0,
      'coupon': 'REGULAR3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff065a9d),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: const Color(0xff065a9d),
        title: Text(
          'Eye Glasses',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'assets/images/glasses.png',
              width: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) {
            return Glasscontainer(
              itemId: item['itemId'],
              imagePath: item['imagePath'],
              type: item['type'],
              rating: item['rating'],
              name: item['name'],
              info: item['info'],
              price: item['price'],
              discount: item['discount'],
              coupon: item['coupon'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
