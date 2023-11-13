import 'package:flutter/material.dart';
import 'package:study_flutter/food_recipe/recipe_card.dart';

class RecipeHome extends StatelessWidget {
  const RecipeHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataList = [
      {
        "category": "수제버거",
        "imgUrl": "https://i.ibb.co/VtK43vv/burger.jpg",
      },
      {
        "category": "건강식",
        "imgUrl": "https://i.ibb.co/2KbN5pV/soup.jpg",
      },
      {
        "category": "한식",
        "imgUrl": "https://i.ibb.co/KXJD0rN/korean-meals.jpg",
      },
      {
        "category": "디저트",
        "imgUrl": "https://i.ibb.co/9Yn3t0w/tiramisu.jpg",
      },
      {
        "category": "피자",
        "imgUrl": "https://i.ibb.co/P9nKtt2/pizza.jpg",
      },
      {
        "category": "볶음밥",
        "imgUrl": "https://i.ibb.co/3svVzM1/shakshuka.jpg",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "상품을 입력해주세요.",
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  print("search");
                },
                icon: const Icon(Icons.search_outlined),
              ),
            ),
          ),
          const Divider(
            height: 1,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                Map<String, dynamic> data = dataList[index];
                final String category = data["category"];
                final String imgUrl = data["imgUrl"];

                return RecipeCard(category: category, imgUrl: imgUrl);
              },
              itemCount: dataList.length,
            ),
          )
        ],
      ),
    );
  }
}
