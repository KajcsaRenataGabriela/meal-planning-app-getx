import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Perform your signup logic here
            // After successful signup, navigate to the home page
            // You can use Get.to or Get.off depending on your use case
            // For this example, we'll use Get.to to push the home page onto the navigation stack
            Get.to(const HomePage());
          },
          child: const Text('Sign Up'),
        ),
      ),
    );
  }
}
