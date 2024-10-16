import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

Widget loadImage(String imageName,
    {double? width, double? height, BoxFit fit = BoxFit.cover}) {
  String firebasePath = 'images/$imageName';

  return FutureBuilder<String>(
    future: _getFirebaseImageUrl(firebasePath),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError || !snapshot.hasData) {
        return Image.asset(
          'assets/images/$imageName',
          width: width,
          height: height,
          fit: fit,
        );
      } else {
        return Image.network(
          snapshot.data!,
          width: width,
          height: height,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            return Image.asset(
              'assets/images/$imageName',
              width: width,
              height: height,
              fit: fit,
            );
          },
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        (loadingProgress.expectedTotalBytes ?? 1)
                    : null,
              ),
            );
          },
        );
      }
    },
  );
}

Future<String> _getFirebaseImageUrl(String firebasePath) async {
  FirebaseStorage storage = FirebaseStorage.instance;
  try {
    String downloadURL = await storage.ref(firebasePath).getDownloadURL();
    return downloadURL;
  } catch (e) {
    print('Error fetching image URL: $e');
    throw e;
  }
}
