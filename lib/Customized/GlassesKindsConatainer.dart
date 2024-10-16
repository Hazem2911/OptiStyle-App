import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String logoPath;
  final VoidCallback onTap;

  const Square({required this.logoPath, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100, // Width of the square container
        height: 100, // Height of the square container
        decoration: BoxDecoration(
          color: Colors.white, // Background color
          borderRadius: BorderRadius.circular(15), // Rounded corners
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 6), // Position of the shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Padding inside the square
          child: Image.asset(
            logoPath, // Logo image inside the square
            fit: BoxFit.contain, // Keep the logo's aspect ratio
          ),
        ),
      ),
    );
  }
}
