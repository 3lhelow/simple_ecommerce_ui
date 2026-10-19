import 'package:flutter/material.dart';

class BestSelling extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double price;

  const BestSelling({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey[200],
              width: double.infinity,
              child: Image.asset(image, fit: BoxFit.contain),
            ),
          ),

          // info
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                Text(
                  subtitle,
                  style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                Text(
                  "$price\$",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
