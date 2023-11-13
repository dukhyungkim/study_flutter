import 'package:flutter/material.dart';
import 'package:study_flutter/msgpapa/messenger_home.dart';

class MsgPapa extends StatelessWidget {
  const MsgPapa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MessengerHome(),
    );
  }
}
