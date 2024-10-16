import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadarat/Customized/Glasscontainer.dart';

class Contactglasses extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'itemId': 'Daily Wear Contact Lenses',
      'imagePath': 'assets/images/d.jpeg',
      'type': 'Daily Wear',
      'rating': 4.5,
      'name': 'Daily Wear Contact Lenses',
      'info': 'Comfortable daily wear contact lenses.',
      'price': 30.0,
      'discount': 5.0,
      'coupon': 'CONTACT5',
    },
    {
      'itemId': 'Monthly Wear Contact Lenses',
      'imagePath': 'assets/images/m.jpeg',
      'type': 'Monthly Wear',
      'rating': 4.3,
      'name': 'Monthly Wear Contact Lenses',
      'info': 'Durable monthly wear contact lenses.',
      'price': 35.0,
      'discount': 4.0,
      'coupon': 'CONTACT4',
    },
    {
      'itemId': 'Stylish colored contact lenses',
      'imagePath': 'assets/images/col.jpeg',
      'type': 'Colored',
      'rating': 4.7,
      'name': 'Colored Contact Lenses',
      'info': 'Stylish colored contact lenses.',
      'price': 40.0,
      'discount': 6.0,
      'coupon': 'CONTACT6',
    },
    {
      'itemId': 'Contact lenses for astigmatism',
      'imagePath': 'assets/images/to.jpeg',
      'type': 'Toric',
      'rating': 4.6,
      'name': 'Toric Contact Lenses',
      'info': 'Contact lenses for astigmatism.',
      'price': 45.0,
      'discount': 7.0,
      'coupon': 'CONTACT7',
    },
    {
      'itemId': 'Multifocal Contact Lenses5',
      'imagePath': 'assets/images/mu.jpeg',
      'type': 'Multifocal',
      'rating': 4.8,
      'name': 'Multifocal Contact Lenses',
      'info': 'Contact lenses for presbyopia.',
      'price': 50.0,
      'discount': 8.0,
      'coupon': 'CONTACT8',
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
          'Contact Lenses',
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
