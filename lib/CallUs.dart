import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Callus extends StatefulWidget {
  const Callus({super.key});

  @override
  State<Callus> createState() => _CallusState();
}

const String facebookUrl = 'https://www.facebook.com/hazem.abdrubo';
const String instagramUrl = 'https://www.instagram.com/hazemm___ahmed/';
const String twitterUrl = 'https://twitter.com/yourprofile';

Future<void> _launchUrl(String url) async {
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _CallusState extends State<Callus> {
  void _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff065a9d),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff065a9d),
        title: Text(
          'Call Us',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 2,
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(
              children: [
                Text(
                  'OptiStyle',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/glasses.png',
                  width: 75,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Us:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  leading: const Icon(Icons.phone, color: Colors.white),
                  title: GestureDetector(
                    onTap: () => _launchURL('tel:+1234567890'),
                    child: Text(
                      'Phone: +201129437816',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          //decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.email, color: Colors.white),
                  title: GestureDetector(
                    onTap: () => _launchURL('mailto:info@optistyle.com'),
                    child: Text(
                      'Email: info@optistyle.com',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.web, color: Colors.white),
                  title: GestureDetector(
                    onTap: () => _launchURL('https://www.optistyle.com'),
                    child: Text(
                      'Website: www.optistyle.com',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook),
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () => _launchUrl(facebookUrl),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        icon: const ImageIcon(
                            AssetImage('assets/images/Instagram.png')),
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () => _launchUrl(instagramUrl),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        icon: const Icon(Icons.alternate_email),
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () => _launchUrl(twitterUrl),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/glasses.png',
            width: 75,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
