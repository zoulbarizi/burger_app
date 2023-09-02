import 'package:burger_app/models/burger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BurgerDetails extends StatelessWidget {
  final Burger burger;

  const BurgerDetails({super.key, required this.burger});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: ListView(
        // padding: const EdgeInsets.all(20).add(EdgeInsets.only(top: 50)),
        children: [
          Container(
            width: Get.width,
            height: Get.height / 2,
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg1.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
          ),
          Container(color: Colors.orange, height: 5),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      burger.name,
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 180, 84, 0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "\$${burger.price}",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(burger.desc),
              ],
            ),
          ),
          ListTile(
            leading:
                const CircleAvatar(child: Icon(Icons.restaurant_menu_rounded)),
            title: const Text("Restaurant name"),
            subtitle: const Text(
              "ORIGO EAT",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing:
                OutlinedButton(onPressed: () {}, child: const Text("About")),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: Size(Get.width * .9, 40),
          backgroundColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: const Icon(Icons.add_shopping_cart_rounded),
        label: const Text("ADD TO CART"),
      ),
    );
  }
}
