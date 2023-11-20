import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final _messageController = TextEditingController();
  String _message = "";

  Future<void> _sendMessage(message) async {
    final user = FirebaseAuth.instance.currentUser;
    final userInfo = await FirebaseFirestore.instance.collection("user").doc(user!.uid).get();
    FirebaseFirestore.instance.collection("chat").add({
      "text": message,
      "time": Timestamp.now(),
      "userId": user.uid,
      "username": userInfo.data()!["username"],
      "portrait": userInfo["portrait"]
    });
  }

  void _onPressSend() {
    FocusScope.of(context).unfocus();
    _sendMessage(_message);
    _messageController.clear();
    setState(() {
      _message = "";
    });
  }

  void _onSubmit(message) {
    FocusScope.of(context).unfocus();
    _sendMessage(message);
    _messageController.clear();
    setState(() {
      _message = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              // maxLines: null,
              controller: _messageController,
              decoration: const InputDecoration(labelText: "Send a message"),
              onChanged: (value) => {
                setState(() {
                  _message = value;
                })
              },
              onSubmitted: _message.trim().isEmpty ? null : _onSubmit,
            ),
          ),
          IconButton(
            onPressed: _message.trim().isEmpty ? null : _onPressSend,
            icon: const Icon(Icons.send),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
