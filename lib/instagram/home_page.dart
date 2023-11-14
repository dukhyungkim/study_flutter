import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Feed(),
    );
  }
}
