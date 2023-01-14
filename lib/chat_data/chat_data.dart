// This file will contain all the messages as a list of chatbubble widgets.
// it is intended to change when the send button is pressed.

import '../chat_bubble.dart';

class ChatDataHandler{
  final String text;

  ChatDataHandler({
    required this.text
  });

  static List<ChatDataHandler> chats(){
    return [
      ChatDataHandler(text: 'Hi this is the first issue.\nThe most recent issue will appear on the top.'),
    ];
  }
}

