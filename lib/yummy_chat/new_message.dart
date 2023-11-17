import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final _messageController = TextEditingController();
  String _message = "";

  void _sendMessage(message) {
    FocusScope.of(context).unfocus();
    FirebaseFirestore.instance.collection("chat").add({
      "text": message,
      "time": Timestamp.now(),
    });
    _messageController.clear();
  }

  void _onPressSend() {
    _sendMessage(_message);
  }

  void _onSubmit(message) {
    if (message.trim().isEmpty) {
      return;
    }
    _sendMessage(message);
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
              controller: _messageController,
              decoration: const InputDecoration(labelText: "Send a message"),
              onChanged: (value) => {_message = value},
              onSubmitted: _onSubmit,
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
