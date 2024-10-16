import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Circle extends StatelessWidget {
  final String imagePath;
  final String labelText;

  const Circle({required this.imagePath, required this.labelText, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 6), // Shadow for lifted effect
              ),
            ],
          ),
          width: 150, // Diameter of the circle
          height: 150,
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Image scales nicely inside the circle
            ),
          ),
        ),
        const SizedBox(height: 12), // Space between image and label
        Text(
          labelText,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 18, // Reduced font size for better fit
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
