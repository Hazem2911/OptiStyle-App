import 'package:flutter/material.dart';
import 'package:nadarat/FavoriteItem.dart';

class FavoriteProvider with ChangeNotifier {
  final List<FavoriteItem> _favorites = [];

  List<FavoriteItem> get favorites => _favorites;

  bool isFavorite(String itemId) {
    return _favorites.any((item) => item.title == itemId);
  }

  void toggleFavoriteStatus(String itemId, String imageUrl) {
    final existingIndex = _favorites.indexWhere((item) => item.title == itemId);
    if (existingIndex >= 0) {
      _favorites.removeAt(existingIndex);
    } else {
      _favorites.add(FavoriteItem(itemId, imageUrl));
    }
    notifyListeners();
  }

  void removeFavorite(FavoriteItem item) {
    _favorites.remove(item);
    notifyListeners();
  }
}
