import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadarat/CartProvider.dart';
import 'package:nadarat/PayPage.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
          'Cart',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          final cartItems = cartProvider.Carts;
          if (cartItems.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Ca.jpg',
                      width: 450,
                      height: 450,
                    ),
                    const SizedBox(height: 100),
                    Text(
                      'Nothing found in cart !!',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartItems[index];
                    return ListTile(
                      leading: Image.asset(item.imagePath),
                      title: Text(
                        item.title,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      subtitle: Text(
                        '\$50.00',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove_circle,
                            color: Colors.white),
                        onPressed: () {
                          cartProvider.removeFromCart(item);
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff065a9d),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Total: \$${cartProvider.getTotalPrice().toStringAsFixed(2)}',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => const PayPage());
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xff065a9d),
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          'Checkout',
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
