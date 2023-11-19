import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class OurChatBubble extends StatelessWidget {
  final String message;
  final String username;
  final String portrait;
  final bool isMe;

  const OurChatBubble({
    super.key,
    required this.message,
    required this.username,
    required this.portrait,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (isMe)
                ChatBubble(
                  clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 24, right: 48),
                  backGroundColor: Colors.blue,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          username,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          message,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              else
                ChatBubble(
                  clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
                  backGroundColor: const Color(0xffE7E7ED),
                  margin: const EdgeInsets.only(top: 24, left: 48),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          username,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          message,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
          Positioned(
            right: isMe?5:null,
            left: isMe?null:5,
            child: CircleAvatar(
              backgroundImage: NetworkImage(portrait),
            ),
          )
        ],
      ),
    );
  }
}
