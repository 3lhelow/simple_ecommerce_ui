import 'package:flutter/material.dart';
import 'package:simple_ecommerce_ui/app_data.dart';

import '../utils/best_selling.dart';
import '../utils/bottom_navigation.dart';
import '../utils/categories.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      // Custom App Bar
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
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AppData.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  final Map<String, dynamic> category = AppData.categories[index];
                  return Categories(
                    icon: category["icon"],
                    title: category["title"],
                  );
                },
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

            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),

              itemCount: AppData.bestSelling.length,
              itemBuilder: (BuildContext context, int index) {
                final Map<String, dynamic> bestSelling = AppData.bestSelling[index];
                return InkWell(
                  child: BestSelling(
                    image: bestSelling["image"],
                    title: bestSelling["title"],
                    subtitle: bestSelling["subtitle"],
                    price: (bestSelling["price"] as num).toDouble(),
                  ),

                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                          ItemsDetails(data: bestSelling),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
