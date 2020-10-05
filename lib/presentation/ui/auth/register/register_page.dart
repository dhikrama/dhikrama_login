import 'package:dhikrama/presentation/ui/auth/login/login_form.dart';
import 'package:dhikrama/presentation/ui/auth/login/login_page.dart';
import 'package:dhikrama/presentation/ui/auth/text_to_page.dart';
import 'package:flutter/material.dart';
import 'register_form.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0062A4),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                RegisterForm(),
                TextToPage(
                  function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  textDescription: "Already have an account?",
                  textToPage: 'Login Now',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
