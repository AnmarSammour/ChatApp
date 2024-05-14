import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 32),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: primaryColor,
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
