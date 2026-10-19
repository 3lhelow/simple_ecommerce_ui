import 'package:flutter/material.dart';

class BestSelling extends StatelessWidget {
  String? image;

  BestSelling({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey[200],
            width: double.infinity,
            child: Image.asset(
              image!,
              height: 130,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
