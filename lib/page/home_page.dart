import 'package:flutter/material.dart';

import '../utils/best_selling.dart';
import '../utils/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search, color: Colors.black),
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu, size: 40),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Categories
            const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Categories(icon: Icons.laptop_mac, title: "laptop"),

                  Categories(icon: Icons.phone_iphone, title: "phone"),

                  Categories(icon: Icons.keyboard, title: "keyboard"),

                  Categories(icon: Icons.mouse, title: "mouse"),

                  Categories(icon: Icons.speaker, title: "speaker"),

                  Categories(icon: Icons.monitor, title: "monitor"),
                ],
              ),
            ),

            // Best Selling
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Best Selling",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),

            GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                BestSelling(image: "images/headphone.png"),
                BestSelling(image: "images/watch.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
