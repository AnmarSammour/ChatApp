import 'package:chat_app/view/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chat());
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogInView()
    );
  }
}
