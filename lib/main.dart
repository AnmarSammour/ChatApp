import 'package:chat_app/view/login/login.dart';
import 'package:chat_app/view/register/register_view.dart';
import 'package:flutter/material.dart';

void main() async  {
  runApp(Chat());
}

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
       LogInView.id: (context) => LogInView(),
        RegisterView.id: (context) => RegisterView(),
      },
      initialRoute: LogInView.id,
    );
  }
}