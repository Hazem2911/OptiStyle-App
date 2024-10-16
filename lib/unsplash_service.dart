import 'dart:convert';
import 'package:http/http.dart' as http;

class UnsplashService {
  final String apiKey = 'YOUR_UNSPLASH_API_KEY';
  final String baseUrl = 'https://api.unsplash.com';

  Future<List<String>> fetchGlassesPhotos() async {
    final response = await http.get(
      Uri.parse('$baseUrl/search/photos?query=glasses&client_id=$apiKey'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<String> imageUrls = (data['results'] as List)
          .map((result) => result['urls']['small'] as String)
          .toList();
      return imageUrls;
    } else {
      throw Exception('Failed to load images');
    }
  }
}