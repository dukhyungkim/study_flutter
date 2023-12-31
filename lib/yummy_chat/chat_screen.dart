import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:study_flutter/yummy_chat/message.dart';
import 'package:study_flutter/yummy_chat/new_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;
  User? currentUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        currentUser = user;
        Logger().d(currentUser!.email);
      }
    } catch (e) {
      Logger().d(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Chat screen"),
          actions: [
            IconButton(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            Expanded(child: Messages()),
            NewMessage()
          ],
        ));
  }
}
