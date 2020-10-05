import 'package:dhikrama/presentation/ui/auth/login/login_form.dart';
import 'package:dhikrama/presentation/ui/auth/register/register_page.dart';
import 'package:dhikrama/presentation/ui/auth/text_to_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0062A4),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                LoginForm(),
                TextToPage(
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  textDescription: "Don't have an account?",
                  textToPage: "Sign Up",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
