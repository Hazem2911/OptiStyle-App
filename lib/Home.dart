import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadarat/CallUs.dart';
import 'package:nadarat/CategoriesPages/ARTryOn.dart';
import 'package:nadarat/CategoriesPages/ComputerGlasses.dart';
import 'package:nadarat/CategoriesPages/ContactGlasses.dart';
import 'package:nadarat/CategoriesPages/EyeGlasses.dart';
import 'package:nadarat/CategoriesPages/KidsGlasses.dart';
import 'package:nadarat/CategoriesPages/NearbyStores.dart';
import 'package:nadarat/Customized/CategoryContainer.dart';
import 'package:nadarat/Customized/GlassesKindsConatainer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();

  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 7) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: _currentPage == index ? 14 : 10,
      height: _currentPage == index ? 14 : 10,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.white : Colors.grey.shade400,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff065a9d),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    children: [
                      Image.asset('assets/images/hero_banner1.jpg',
                          fit: BoxFit.cover),
                      Image.asset('assets/images/hero_banner2.jpg',
                          fit: BoxFit.cover),
                      Image.asset('assets/images/hero_banner3.jpg',
                          fit: BoxFit.cover),
                      Image.asset('assets/images/h.jpeg', fit: BoxFit.cover),
                      Image.asset('assets/images/a.jpeg', fit: BoxFit.cover),
                      Image.asset('assets/images/z.jpeg', fit: BoxFit.cover),
                      Image.asset('assets/images/ma.jpeg', fit: BoxFit.cover),
                      Image.asset('assets/images/e.jpeg', fit: BoxFit.cover),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => buildDot(index)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text(
                    'Welcome to OptiStyle',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Callus()),
                      );
                    },
                    icon: const Icon(Icons.call, color: Colors.white, size: 28),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Eyeglasses()),
                    ),
                    child: const Circle(
                      imagePath: 'assets/images/ManWearingGlasses.webp',
                      labelText: 'Men',
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Eyeglasses()),
                    ),
                    child: const Circle(
                      imagePath: 'assets/images/WomanWearingGlasses.webp',
                      labelText: 'Women',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            Image.asset(
              'assets/images/glasses.png',
              width: 100,
              color: Colors.white.withOpacity(0.8),
            ),

            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kidsglasses()),
                  );
                },
                child: const Circle(
                  imagePath: 'assets/images/KidWearingGlasses.webp',
                  labelText: 'Kids',
                ),
              ),
            ),

            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 2,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 80,
                  height: 2,
                  color: Colors.white,
                ),
              ],
            ),

            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Square(
                      logoPath: 'assets/images/EyeGlasses.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eyeglasses()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    Square(
                      logoPath: 'assets/images/ComputerGlasses.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Computerglasses()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    Square(
                      logoPath: 'assets/images/C.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Contactglasses()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    Square(
                      logoPath: 'assets/images/kidsG.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Kidsglasses()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    Square(
                      logoPath: 'assets/images/AR.png',
                      onTap: () {
                        Get.to(() => const AR());
                      },
                    ),
                    const SizedBox(width: 20),
                    Square(
                      logoPath: 'assets/images/Nearby.png',
                      onTap: () {
                        Get.to(() => Nearbystores());
                      },
                    ),
                    const SizedBox(width: 20),
                    Square(
                      logoPath: 'assets/images/progressive.png',
                      onTap: () {},
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
