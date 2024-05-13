import 'package:flutter/material.dart';

class SingInView extends StatefulWidget {
  const SingInView({super.key});
  @override
  State<SingInView> createState() => _SingInViewState();
}

class _SingInViewState extends State<SingInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbfd3e9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
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
                  'SIgnIN',
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
            TextField(
              
            ),
            SizedBox(
              height: 10,
            ),
            
            SizedBox(
              height: 20,
            ),
            CustomButon(
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  isLoading = true;
                  setState(() {});
                  try {
                    await loginUser();
                    Navigator.pushNamed(context, ChatPage.id, arguments: email);
                  } on FirebaseAuthException catch (ex) {
                    if (ex.code == 'user-not-found') {
                      showSnackBar(context, 'user not found');
                    } else if (ex.code == 'wrong-password') {
                      showSnackBar(context, 'wrong password');
                    }
                  } catch (ex) {
                    print(ex);
                    showSnackBar(context, 'there was an error');
                  }

                  isLoading = false;
                  setState(() {});
                } else {}
              },
              text: 'LOGIN',
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
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: Text(
                    '  Register',
                    style: TextStyle(
                      color: Color(0xffC7EDE6),
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
