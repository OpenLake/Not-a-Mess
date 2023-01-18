import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'chat_bubble.dart';
import 'chat_data/chat_data.dart';
import 'constants/colors.dart';
import 'main.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final chatsList = ChatDataHandler.chats();
  final myController =
  TextEditingController(); // this is used to retrieve the data from the TextField

  _sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 60,
      decoration: BoxDecoration(color: chatBubbleColor, boxShadow: [
        BoxShadow(
          color: Colors.white,
          blurRadius: 2,
          blurStyle: BlurStyle.outer,
        ),
      ]),
      child: Row(
        children: [
          Expanded(
              child: TextField(
                controller: myController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration.collapsed(
                    hintText: "  Write an issue...",
                    hintStyle: TextStyle(color: Colors.white)),
                textCapitalization: TextCapitalization.sentences,
              )),
          IconButton(
            onPressed: () => {
              setState(() {
                chatsList.insert(0, ChatDataHandler(text: myController.text));
              })
            },
            icon: Icon(Icons.send),
            color: Colors.white,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          leading: BackButton(onPressed: (){context.pushReplacement("/menu");}),
          title: Text(
                "Issues",
              )),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (ChatDataHandler chat in chatsList)
                    ChatBubble(chatHolder: chat),
                ],
              ),
            ),
          ),
          _sendMessageArea(),
        ],
      ),
    );
  }
}
