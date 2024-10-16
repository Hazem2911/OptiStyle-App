import 'package:flutter/material.dart';
import 'package:nadarat/Cart.dart';
import 'package:nadarat/Favorite.dart';
import 'package:nadarat/Home.dart';
import 'package:nadarat/Profile.dart';


class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const Home(),
    const Favorite(),
    const Cart(),
    const Profile(),
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor:  Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "",
            ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "",
            ),
           
          ],
          currentIndex: selectedIndex,
          selectedItemColor: const Color(0xff065a9d),
          unselectedItemColor: const Color(0xffcdd1d5),
          onTap: onItemTapped,
        ),
      ),
    );
  }
}