import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nearbystores extends StatefulWidget {
  @override
  State<Nearbystores> createState() => _NearbystoresState();
}

class _NearbystoresState extends State<Nearbystores> {
  final List<Map<String, String>> stores = [
    {
      'name': 'OptiStyle Store 1',
      'address': '123 Tahrir St, Cairo',
      'icon': 'assets/images/s.jpeg',
    },
    {
      'name': 'OptiStyle Store 2',
      'address': '456 Ramses St, Giza',
      'icon': 'assets/images/s.jpeg',
    },
    {
      'name': 'OptiStyle Store 3',
      'address': '789 Alexandria St, Alexandria',
      'icon': 'assets/images/s.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff065a9d),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          'Nearby Stores',
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff065a9d),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child:
                Icon(Icons.store_mall_directory, color: Colors.white, size: 30),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: stores.length,
                itemBuilder: (context, index) {
                  final store = stores[index];
                  return Card(
                    color: Colors.white,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        store['icon']!,
                        width: 50,
                        height: 50,
                      ),
                      title: Text(
                        store['name']!,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff065a9d),
                        ),
                      ),
                      subtitle: Text(
                        store['address']!,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xff065a9d),
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff065a9d),
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Tapped on ${store['name']}')),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Searching for nearby stores...')),
                );
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xff065a9d),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'Search for Nearby Stores',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
