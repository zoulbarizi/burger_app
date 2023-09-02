import 'package:burger_app/screens/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg1.jpg",
            fit: BoxFit.cover,
            height: Get.height * .7,
            width: Get.width,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: Get.width,
              height: Get.height / 2,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Welcome !",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Get.offAll(
                            () => const Home(),
                            transition: Transition.circularReveal,
                            duration: const Duration(seconds: 3),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                          child: const Text("Login with Google"),
                        )
                      ],
                    ),
                  ),
                  Text(
                    Consts.appName,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
