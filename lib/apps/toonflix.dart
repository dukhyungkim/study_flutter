import 'package:flutter/material.dart';
import 'package:study_flutter/screens/toon_home.dart';

class Toonflix extends StatelessWidget {
  const Toonflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToonHome(),
    );
  }
}
