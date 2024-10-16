import 'package:flutter/material.dart';
import 'package:nadarat/CartProvider.dart';
import 'package:nadarat/favoriteprovider.dart';
import 'package:provider/provider.dart';

class Glasscontainer extends StatefulWidget {
  final String itemId;
  final String imagePath;
  final String type;
  final double rating;
  final String name;
  final String info;
  final double price;
  final double discount;
  final String coupon;

  const Glasscontainer({
    super.key,
    required this.itemId,
    required this.imagePath,
    required this.type,
    required this.rating,
    required this.name,
    required this.info,
    required this.price,
    required this.discount,
    required this.coupon,
  });

  @override
  State<Glasscontainer> createState() => _GlasscontainerState();
}

class _GlasscontainerState extends State<Glasscontainer> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    widget.imagePath,
                    width: 150,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    widget.type,
                    style: const TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text(widget.rating.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  widget.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(widget.info, style: const TextStyle(color: Colors.grey)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${widget.price.toString()}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text('Extra ${widget.discount.toString()}% Off.',
                          style: const TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Coupon: ${widget.coupon}',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      Consumer<CartProvider>(
                        builder: (context, CartProvider, child) {
                          final iscarted = CartProvider.isCarted(widget.itemId);
                          return ElevatedButton(
                            onPressed: () {
                              CartProvider.toggleCartStatus(
                                  widget.itemId, widget.imagePath);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: iscarted ? Colors.green : Colors.white,
                              foregroundColor: iscarted ? Colors.white : Colors.green,
                            ),
                            child: Text(iscarted ? 'Remove from Cart' : 'Add to Cart'),
                          );
                        }
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Consumer<FavoriteProvider>(
              builder: (context, favoriteProvider, child) {
                final isFavorite = favoriteProvider.isFavorite(widget.itemId);
                return IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    favoriteProvider.toggleFavoriteStatus(
                        widget.itemId, widget.imagePath);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
