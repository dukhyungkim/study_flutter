import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      "assets/alpha.jpg",
      "assets/bear.jpeg",
      "assets/cheetah.jpeg",
      "assets/jaguar.jpeg",
      "assets/leopard.jpeg",
      "assets/cheetah_baby.jpeg",
      "assets/racoon.jpeg",
      "assets/simba.jpg",
      "assets/tiger.jpeg",
      "assets/squirrel.jpeg",
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.camera,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.paperplane,
              color: Colors.black,
            ),
          )
        ],
        title: Image.asset(
          'assets/logo.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Feed(image: imageList[index],);
        },
      ),
    );
  }
}
