import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadarat/Customized/Glasscontainer.dart';

class Computerglasses extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'itemId': 'Blue Light Blocking Glasses',
      'imagePath': 'assets/images/blue2.jpeg',
      'type': 'Blue Light Blocking',
      'rating': 4.5,
      'name': 'Blue Light Blocking Glasses',
      'info': 'Protect your eyes from blue light with these stylish glasses.',
      'price': 30.0,
      'discount': 5.0,
      'coupon': 'COMP5',
    },
    {
      'itemId': 'Anti-Glare Computer Glasses',
      'imagePath': 'assets/images/Anti.jpeg',
      'type': 'Anti-Glare',
      'rating': 4.3,
      'name': 'Anti-Glare Computer Glasses',
      'info': 'Reduce glare and eye strain with these glasses.',
      'price': 35.0,
      'discount': 4.0,
      'coupon': 'COMP4',
    },
    {
      'itemId': 'UV Protection Computer Glasses',
      'imagePath': 'assets/images/uv.jpeg',
      'type': 'UV Protection',
      'rating': 4.7,
      'name': 'UV Protection Computer Glasses',
      'info': 'Protect your eyes from UV rays while using the computer.',
      'price': 40.0,
      'discount': 6.0,
      'coupon': 'COMP6',
    },
    {
      'itemId': 'Photochromic Computer Glasses',
      'imagePath': 'assets/images/ph.jpeg',
      'type': 'Photochromic',
      'rating': 4.6,
      'name': 'Photochromic Computer Glasses',
      'info': 'adjust to lighting conditions, perfect for computer use.',
      'price': 45.0,
      'discount': 7.0,
      'coupon': 'COMP7',
    },
    {
      'itemId': 'Progressive Computer Glasses',
      'imagePath': 'assets/images/pr.jpeg',
      'type': 'Progressive',
      'rating': 4.8,
      'name': 'Progressive Computer Glasses',
      'info': 'Seamless vision correction for computer use.',
      'price': 50.0,
      'discount': 8.0,
      'coupon': 'COMP8',
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
          'Computer Glasses',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 25,
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
