import 'package:chat_app/view/widgets/custom_button.dart';
import 'package:chat_app/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff396ca4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Image.asset(
              'assets/images/chat_icon.png',
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chat App',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 75,
            ),
            Row(
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFormTextField(
              hintText: 'Email',
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Password',
            ),
            SizedBox(
              height: 20,
            ),
            CustomButon(
              onTap: () {

              },
              text: 'Register',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    '  LogIn',
                    style: TextStyle(
                      color: Color(0xffbfd3e9),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
