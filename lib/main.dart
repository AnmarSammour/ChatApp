import 'package:chat_app/view/signin/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chat());
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SingInView()
    );
  }
}
