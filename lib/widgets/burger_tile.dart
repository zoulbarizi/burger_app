import 'package:burger_app/screens/burger_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/burger.dart';

class BurgerTile extends StatelessWidget {
  final Burger e;

  const BurgerTile({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        () => BurgerDetails(burger: e),
        transition: Transition.size,
        duration: const Duration(seconds: 4),
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 120, left: 20, bottom: 20),
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 255, 232, 181),
              // Colors.white,
              Colors.amber.withOpacity(.1),
            ],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                e.img,
                height: Get.height,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    e.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 0.0,
                    ),
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "\$${e.price}",
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
