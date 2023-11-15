import 'package:flutter/material.dart';
import 'package:study_flutter/yummy_chat/login_signup_screen.dart';

class YummyChat extends StatelessWidget {
  const YummyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginSignupScreen(),
    );
  }
}
