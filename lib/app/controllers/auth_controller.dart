import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();

  late Rx<User?> firebaseUser;
  RxBool isLoggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
    firebaseAuth.authStateChanges().listen((User? user) {
      if (user != null) {
        isLoggedIn.value = true;
      } else {
        isLoggedIn.value = false;
      }
    });
  }

  Future<void> register(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (firebaseAuthException) {
      //
    }
  }

  Future<void> login(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (firebaseAuthException) {
      //
    }
  }

}
