import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthController _authController = Get.put(AuthController());

  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnimateGradient(
        primaryBegin: Alignment.topLeft,
        primaryEnd: Alignment.bottomLeft,
        secondaryBegin: Alignment.bottomLeft,
        secondaryEnd: Alignment.topRight,
        primaryColors: <Color>[
          Colors.pink.shade200,
          Colors.pinkAccent.shade100,
          Colors.pinkAccent.withOpacity(0.1),
        ],
        secondaryColors: <Color>[
          Colors.pinkAccent.withOpacity(0.1),
          Colors.purpleAccent.shade100,
          Colors.purple.shade200,
        ],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 64.0, right: 64.0),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 54),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 32.0, top: 8.0),
                      child: Icon(
                        Icons.waving_hand,
                        color: Colors.white,
                        size: 64.0,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(hintText: 'Email'),
                          ),
                          TextField(
                            controller: _passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: const InputDecoration(hintText: 'Password'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    Column(children: <Widget>[
                      FloatingActionButton.extended(
                        label: const Text(
                          'Login',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                        ), // <-- Text
                        backgroundColor: Colors.pink,
                        icon: const Icon(
                          Icons.login,
                          size: 24.0,
                        ),
                        onPressed: () {
                          _authController.login(email, password);
                        },
                        heroTag: 'btn1',
                      ),
                      const SizedBox(height: 16.0),
                      FloatingActionButton.extended(
                        label: const Text('Create a NEW account'), // <-- Text
                        backgroundColor: Colors.pink.shade300,
                        icon: const Icon(
                          Icons.assignment_ind,
                          size: 24.0,
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/create');
                        },
                        heroTag: 'btn2',
                      ),
                    ])
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
