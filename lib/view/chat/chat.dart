import 'package:chat_app/constants.dart';
import 'package:chat_app/view/widgets/chat_buble.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  static String id = 'ChatView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              height: 30,
            ),
            Text(
              ' Chat',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              reverse: true,
              itemBuilder: (context, index) {
                return ChatBuble();
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Send Message',
              suffixIcon: Icon(
                Icons.send,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
