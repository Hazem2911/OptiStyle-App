import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadarat/CallUs.dart';
import 'package:nadarat/Cart.dart';
import 'package:nadarat/Favorite.dart';
import 'package:nadarat/SignIn.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff065a9d),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/glasses.png',
            width: 30,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xff065a9d),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: const AssetImage('assets/images/Soraa.jpg'),
                  backgroundColor: Colors.grey[300],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Hazem Ahmed',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "hazemahmedd56@gmail.com",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 30),
              _buildProfileOption(
                title: 'My Orders',
                icon: Icons.shopping_cart,
                onTap: () {
                  Get.to(() => const Cart());
                },
              ),
              const SizedBox(height: 16),
              _buildProfileOption(
                title: 'My Wishlist',
                icon: Icons.favorite,
                onTap: () {
                  Get.to(() => const Favorite());
                },
              ),
              const SizedBox(height: 16),
              _buildProfileOption(
                title: 'About OptiStyle',
                icon: Icons.info,
                onTap: () {
                  Get.to(() => const Callus());
                },
              ),
              const SizedBox(height: 16),
              _buildProfileOption(
                title: 'Sign Out',
                icon: Icons.logout,
                onTap: () async {
                  await _auth.signOut();
                  Get.offAll(() => const SignIn());
                },
              ),
              const SizedBox(height: 120),
              Text(
                'OptiStyle',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileOption({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xff065a9d)),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color(0xff065a9d),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xff065a9d)),
        onTap: onTap,
      ),
    );
  }
}
