import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:not_a_mess/chat_data/chat_data.dart';
import 'constants/colors.dart';

class ChatBubble extends StatelessWidget {
  final ChatDataHandler chatHolder;
  ChatBubble({required this.chatHolder});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Container(
          constraints: BoxConstraints(
            maxWidth: 0.9 * MediaQuery.of(context).size.width,
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: chatBubbleColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5,
                )
              ],
            ),
            margin: const EdgeInsets.all(10),
            width: double.maxFinite,
            child: Text(
              chatHolder.text,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
