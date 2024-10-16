import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthControl extends GetxController {
  void signup(String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(credential);
      Get.snackbar('Account created', 'Account created successfully',
          snackPosition: SnackPosition.BOTTOM);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar(
            'Error creating account', 'The password provided is too weak.',
            snackPosition: SnackPosition.BOTTOM);
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar('Error creating account',
            'The account already exists for that email.',
            snackPosition: SnackPosition.BOTTOM);
      } else {
        print(e.code);
      }
    } catch (e) {
      Get.snackbar('Error creating account', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
      print('🚀🚀🚀🚀');
    }
  }
}
