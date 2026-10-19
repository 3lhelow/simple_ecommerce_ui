import 'package:flutter/material.dart';

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

            const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Categories(icon: Icons.laptop_mac, title: "laptop"),

                Categories(icon: Icons.phone, title: "phone"),

                Categories(icon: Icons.keyboard, title: "keyboard"),

                Categories(icon: Icons.mouse, title: "mouse"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
