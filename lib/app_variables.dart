import 'package:flutter/material.dart';

// Define colors
const Color primaryColor = Color(0xff065a9d);

// Define text styles
const TextStyle whiteTextStyle = TextStyle(color: Colors.white);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;

  final String facebookUrl = 'https://www.facebook.com/hazem.abdrubo';
  final String instagramUrl = 'https://www.instagram.com/hazemm___ahmed/';
  final String twitterUrl = 'https://twitter.com/yourprofile';