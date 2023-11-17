import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:study_flutter/yummy_chat/chat_screen.dart';
import 'package:study_flutter/yummy_chat/login_signup_screen.dart';

class YummyChat extends StatelessWidget {
  const YummyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const ChatScreen();
          }
          return const LoginSignupScreen();
        },
      ),
    );
  }
}
