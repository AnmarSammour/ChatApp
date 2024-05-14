import 'package:chat_app/view/login/login.dart';
import 'package:chat_app/view/register/register_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Chat());
}

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LogInView.id: (context) => LogInView(),
        RegisterView.id: (context) => RegisterView(),
      },
      initialRoute: LogInView.id,
    );
  }
}
