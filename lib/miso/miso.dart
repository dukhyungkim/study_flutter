import 'package:flutter/material.dart';
import 'package:study_flutter/miso/home_screen.dart';

class Miso extends StatelessWidget {
  const Miso({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
