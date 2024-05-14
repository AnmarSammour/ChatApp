import 'package:chat_app/constants.dart';
import 'package:chat_app/view/register/register_view.dart';
import 'package:chat_app/view/widgets/custom_button.dart';
import 'package:chat_app/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  static String id = 'LogInView';

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 75,
            ),
            Image.asset(
              logo,
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
                  'Log In',
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
              onTap: () {},
              text: 'Log In',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'dont\'t have an account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterView.id);
                  },
                  child: Text(
                    '  Register',
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
