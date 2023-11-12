import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final Animation<double> animation;

  const ChatMessage({super.key, required this.text, required this.animation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: FadeTransition(
        opacity: animation,
        child: SizeTransition(
          sizeFactor: animation,
          axisAlignment: -1.0,
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text("N"),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ID or Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(text),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
