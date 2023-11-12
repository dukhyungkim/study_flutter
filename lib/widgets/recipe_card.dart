import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String category, imgUrl;

  const RecipeCard({super.key, required this.category, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            imgUrl,
            width: double.infinity,
            height: 120,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: 120,
            color: Colors.black.withOpacity(0.5),
          ),
          Text(
            category,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }
}
