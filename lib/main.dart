import 'package:flutter/material.dart';
import 'package:ui_challenge_week_seven/pages/login.dart';
import 'package:ui_challenge_week_seven/pages/register.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
      },
    );
  }
}