import 'package:flutter/material.dart';

import 'ui/auth/login/login_page.dart';

class AppDhikrama extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      home: LoginPage(),
    );
  }
}
