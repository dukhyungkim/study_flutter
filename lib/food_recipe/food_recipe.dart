import 'package:flutter/material.dart';
import 'package:study_flutter/food_recipe/recipe_home.dart';

class FoodRecipe extends StatelessWidget {
  const FoodRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Food Recipe",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  print("go to my page");
                },
                icon: const Icon(
                  Icons.person_outline,
                ))
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                margin: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  color: Colors.amber,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                            width: 62,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "닉네임",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "hello@world.com",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 12 / 4,
                child: PageView(
                  children: [
                    Image.network(
                      "https://i.ibb.co/Q97cmkg/sale-event-banner1.jpg",
                    ),
                    Image.network(
                      "https://i.ibb.co/GV78j68/sale-event-banner2.jpg",
                    ),
                    Image.network(
                      "https://i.ibb.co/R3P3RHw/sale-event-banner3.jpg",
                    ),
                    Image.network(
                      "https://i.ibb.co/LRb1VYs/sale-event-banner4.jpg",
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  "구매내역",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onTap: () {
                  print("tap purchases");
                },
              ),
              ListTile(
                title: const Text(
                  "저장한 레시피",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onTap: () {
                  print("tap saved recipes");
                },
              ),
            ],
          ),
        ),
        body: const RecipeHome(),
      ),
    );
  }
}
