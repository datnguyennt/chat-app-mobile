import 'package:chat_app/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _handleAuthChange);
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _handleAuthChange(User? user) {
    if (user == null) {
      debugPrint("Login Page");
      Get.offAll(Routes.LOGIN);
    } else {
      Get.offAll(Routes.HOME);
    }
  }

  void registerWithEmail(String email, String password) {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "About User",
        "User message",
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text("Account create failed"),
        messageText: Text(e.toString()),
      );
    }
  }
}
