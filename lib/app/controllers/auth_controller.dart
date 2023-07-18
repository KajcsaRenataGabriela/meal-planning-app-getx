import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../screens/home_page.dart';
import '../screens/sign_up_page.dart';
import '../utils/constants.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();

  late Rx<User?> firebaseUser;

  @override
  void onInit() {
    super.onInit();

    final Rx<User?> firebaseUser = Rx<User?>(firebaseAuth.currentUser);

    firebaseUser.bindStream(firebaseAuth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  Future<void> _setInitialScreen(User? user) async {
    if (user == null) {
      Get.offAll(() => const SignUp());
    } else {
      Get.offAll(() => const HomePage());
    }
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
