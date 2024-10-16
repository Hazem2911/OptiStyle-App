import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadarat/Customized/Glasscontainer.dart';

class Kidsglasses extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'itemId': 'Round Kids Glasses',
      'imagePath': 'assets/images/round.png',
      'type': 'Round',
      'rating': 4.5,
      'name': 'Round Kids Glasses',
      'info': 'Comfortable and stylish round glasses for kids.',
      'price': 20.0,
      'discount': 5.0,
      'coupon': 'KIDS5',
    },
    {
      'itemId': 'Square Kids Glasses',
      'imagePath': 'assets/images/square.png',
      'type': 'Square',
      'rating': 4.0,
      'name': 'Square Kids Glasses',
      'info': 'Durable square glasses for active kids.',
      'price': 25.0,
      'discount': 3.0,
      'coupon': 'KIDS3',
    },
    {
      'itemId': 'Oval Kids Glasses',
      'imagePath': 'assets/images/oval.jpeg',
      'type': 'Oval',
      'rating': 4.8,
      'name': 'Oval Kids Glasses',
      'info': 'Elegant oval glasses for kids.',
      'price': 22.0,
      'discount': 4.0,
      'coupon': 'KIDS4',
    },
    {
      'itemId': 'Rectangle Kids Glasses',
      'imagePath': 'assets/images/rectangle.jpeg',
      'type': 'Rectangle',
      'rating': 4.2,
      'name': 'Rectangle Kids Glasses',
      'info': 'Stylish rectangle glasses for kids.',
      'price': 23.0,
      'discount': 2.0,
      'coupon': 'KIDS2',
    },
    {
      'itemId': 'Cat Eye Kids Glasses',
      'imagePath': 'assets/images/Cat.png',
      'type': 'Cat Eye',
      'rating': 4.7,
      'name': 'Cat Eye Kids Glasses',
      'info': 'Fashionable cat eye glasses for kids.',
      'price': 24.0,
      'discount': 3.0,
      'coupon': 'KIDS3',
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
          'kids Glasses',
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
