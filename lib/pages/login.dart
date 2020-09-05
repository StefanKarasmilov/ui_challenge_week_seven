import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenge_week_seven/pages/register.dart';
import 'package:ui_challenge_week_seven/widgets/headers.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          _backWave1(context),

          _backWave2(context),

          _frontWave(context),

          _icon(),

          _body(context),

        ],
      )
   );
   
  }

  Widget _body(context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 280,),

            Text('Hello', style: TextStyle(fontSize: 100, fontWeight: FontWeight.w500),),
            Text('Sign In to your account', style: TextStyle(fontSize: 22, color: Colors.grey),),
            SizedBox(height: 30,),

            _textField(context, 'Email'),
            SizedBox(height: 10,),
            _textField(context, 'Password'),

            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Forgot your Password?', style: TextStyle(fontSize: 17, color: Colors.grey),)
            ),

            SizedBox(height: 40,),
            Align(
              alignment: Alignment.center,
              child: _button()
            ),

            SizedBox(height: 30,),
            _createAccount(context),

          ],
        ),
      ),
    );

  }

  Widget _createAccount(context) {

    final pageRoute = PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => RegisterPage(),
      transitionDuration: Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        
        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.ease);

        return RotationTransition(
          turns: Tween<double> (begin: 0.5, end: 1.0).animate(curvedAnimation),
          child: FadeTransition(
            opacity: Tween<double> (begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child,
          ),
        );

      },
    );

    return Row(
      children: [

        Text('Don\'t have an account?', style: TextStyle(fontSize: 22, color: Colors.grey),),
        GestureDetector(
          onTap: () => Navigator.push(context, pageRoute),
          child: Text('Create', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
        )

      ],
    );

  }

  Widget _button() {

    return Container(
      height: 70,
      width: 200,
      alignment: Alignment.center,
      child: Text('SIGN IN', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(
          colors: [
            Color(0xfff7dfb2),
            Color(0xffffa79c),
            Color(0xffff72a4),
            Color(0xffff39bf),
          ]
        ),
      ),
    );

  }

  Widget _textField(context, String text) {

    final textField = TextField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        )
      ),
    );

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 18),
      width: double.infinity,
      child: textField,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 10
          )
        ]
      ),
    );

  }

  Widget _icon() {

    return Container(
      margin: EdgeInsets.only(top: 70),
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: FaIcon(FontAwesomeIcons.building, color: Colors.white, size: 100,),
    );

  }

  Widget _frontWave(context) {

    final path = new Path();
    final size = MediaQuery.of(context).size;
    final height = size.height * 0.85;

    path.lineTo(0, height * 0.35);
    path.quadraticBezierTo(size.width * 0.15, height * 0.44, size.width * 0.40,  height * 0.39);
    path.quadraticBezierTo(size.width * 0.70, height * 0.32, size.width,  height * 0.35);
    path.lineTo(size.width, 0);

    return HeaderWaveGradient(
      colors: [
        Color(0xfff7dfb2),
        Color(0xffffa79c),
        Color(0xffff72a4),
        Color(0xffff39bf),
      ],
      path: path 
    );

  }

  Widget _backWave1(context) {

    final path = new Path();
    final size = MediaQuery.of(context).size;
    final height = size.height * 0.85;

    path.lineTo(0, height * 0.35);
    path.quadraticBezierTo(size.width * 0.15, height * 0.46, size.width * 0.60,  height * 0.39);
    path.quadraticBezierTo(size.width * 0.90, height * 0.32, size.width,  height * 0.35);
    path.lineTo(size.width, 0);

    return HeaderWaveGradient(
      colors: [
        Color.fromRGBO(255, 184, 116, 0.7),
        Color.fromRGBO(255, 184, 116, 0.7),
      ],
      path: path 
    );

  }

  Widget _backWave2(context) {

    final path = new Path();
    final size = MediaQuery.of(context).size;
    final height = size.height * 0.85;

    path.lineTo(0, height * 0.35);
    path.quadraticBezierTo(size.width * 0.35, height * 0.34, size.width * 0.50,  height * 0.38);
    path.quadraticBezierTo(size.width * 0.75, height * 0.45, size.width,  height * 0.35);
    path.lineTo(size.width, 0);

    return HeaderWaveGradient(
      colors: [
        Color.fromRGBO(255, 94, 174, 0.5),
        Color.fromRGBO(255, 94, 174, 0.5),
      ],
      path: path 
    );

  }

}