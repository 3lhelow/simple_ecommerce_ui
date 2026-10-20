import 'package:flutter/material.dart';

import '../utils/bottom_navigation.dart';

class ItemsDetails extends StatefulWidget {
  final Map<String, dynamic> data;

  const ItemsDetails({super.key, required this.data});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      endDrawer: const Drawer(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_outlined, color: Colors.black),
            Text(" Ecommerce ", style: TextStyle(color: Colors.black)),
            Text("App", style: TextStyle(color: Colors.orange)),
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: ListView(
        children: [
          Image.asset(widget.data["image"]),

          const SizedBox(height: 10),

          Center(
            child: Column(
              children: [
                // title
                _textCenterDate(
                  data: widget.data["title"],
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),

                const SizedBox(height: 10),

                // subtitle
                _textCenterDate(
                  data: widget.data["subtitle"],
                  color: Colors.grey.shade600,
                ),

                const SizedBox(height: 10),

                // price
                _textCenterDate(
                  data: widget.data["price"],
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),

                const SizedBox(height: 25),

                // Color
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Color:", style: TextStyle(color: Colors.grey)),
                    ..._choseColor(
                      color: Colors.grey,
                      text: " Grey ",
                      isSelected: true,
                    ),
                    ..._choseColor(
                      color: Colors.black,
                      text: " Black ",
                      isSelected: false,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Size:"),
                    const SizedBox(width: 5),
                    ..._choseSize(size: [6, 7, 8, 9, 10]),
                  ],
                ),

                const SizedBox(height: 25),

                // button
                MaterialButton(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 80,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  onPressed: () {},
                  color: Colors.black,
                  textColor: Colors.white,
                  child: const Text("Add To Cart"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _textCenterDate({
    required dynamic data,
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return Text(
      "$data",
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  List<Widget> _choseColor({
    required Color color,
    required String text,
    bool? isSelected,
  }) {
    return [
      const SizedBox(width: 10),
      Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: (isSelected != null) && (isSelected == true)
              ? Border.all(color: Colors.orange)
              : null,
        ),
      ),
      Text(text),
    ];
  }

  List<Widget> _choseSize({required List<int> size}) {
    return [
      for (int i = 0; i < size.length; i++) ...[
        Text(
          "${size[i]}",
          style: TextStyle(color: i == 0 ? Colors.orange : Colors.grey),
        ),
        const SizedBox(width: 10),
      ],
    ];
  }
}
