import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:study_flutter/msgpapa/chat_message.dart';

class MessengerHome extends StatefulWidget {
  const MessengerHome({super.key});

  @override
  State<MessengerHome> createState() => _MessengerHomeState();
}

class _MessengerHomeState extends State<MessengerHome> {
  final _animListKey = GlobalKey<AnimatedListState>();
  final _textEditingController = TextEditingController();

  final List<String> _chats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedList(
              key: _animListKey,
              reverse: true,
              itemBuilder: _buildItem,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: const InputDecoration(
                        hintText: "input",
                      ),
                      onSubmitted: _handleSubmitted,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  IconButton(
                    onPressed: () {
                      _handleSubmitted(_textEditingController.text);
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.amberAccent,
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(context, index, animation) {
    return ChatMessage(
      text: _chats[index],
      animation: animation,
    );
  }

  void _handleSubmitted(String text) {
    Logger().d(text);
    _textEditingController.clear();
    _chats.insert(0, text);
    _animListKey.currentState!.insertItem(0);
  }
}
