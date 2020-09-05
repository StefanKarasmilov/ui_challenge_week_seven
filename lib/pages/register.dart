import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenge_week_seven/pages/login.dart';
import 'package:ui_challenge_week_seven/pages/register.dart';
import 'package:ui_challenge_week_seven/widgets/headers.dart';


class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          _backWave1(context),

          _backWave2(context),

          _frontWave(context),

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

            SizedBox(height: 130,),

            Align(
              alignment: Alignment.center,
              child: _avatarPhoto()
            ),
            SizedBox(height: 10,),

            _textField(context, 'First Name'),
            SizedBox(height: 10,),

            _textField(context, 'Last Name'),
            SizedBox(height: 10,),

            _textField(context, 'E-mail Address'),
            SizedBox(height: 10,),

            _textField(context, 'Mobile Number'),
            SizedBox(height: 10,),

            _textField(context, 'Password'),
            SizedBox(height: 10,),


            SizedBox(height: 40,),
            Align(
              alignment: Alignment.center,
              child: _button()
            ),

            SizedBox(height: 40,),
            Align(
              alignment: Alignment.center,
              child: Text('Or create account using social media', style: TextStyle(fontSize: 16, color: Colors.grey),)
            ),
            SizedBox(height: 20,),

            _socialMedia(),
            SizedBox(height: 20,),

            _goToLogin(context),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );

  }

  Widget _goToLogin(context) {

    final pageRoute = PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => LoginPage(),
      transitionDuration: Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        
        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.ease); 

        return RotationTransition(
          turns: Tween<double> (begin: 0.5, end: 1.0).animate(curvedAnimation),
          child: FadeTransition(
            opacity: Tween<double> (begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child, 
          )
        );

      },
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text('Already have an account?', style: TextStyle(fontSize: 16, color: Colors.grey),),
        GestureDetector(
          onTap: () => Navigator.push(context, pageRoute),
          child: Text('Go to Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
        ),

      ],
    );

  }

  Widget _socialMedia() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        FaIcon(FontAwesomeIcons.googlePlusSquare, color: Colors.red, size: 50,),
        FaIcon(FontAwesomeIcons.twitterSquare, color: Colors.blueAccent, size: 50,),
        FaIcon(FontAwesomeIcons.facebookSquare, color: Colors.blue[800], size: 50,),

      ],
    );

  }

  Widget _avatarPhoto() {

    return Stack(
      children: [

        Container(
          height: 180,
          width: 180,
          alignment: Alignment.center,
          child: FaIcon(FontAwesomeIcons.userAlt, color: Colors.grey, size: 90,),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2 
              )
            ]
          ),
        ),

        Positioned(
          bottom: 10,
          right: 5,
          child: Icon(Icons.add_circle, size: 40,)
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


  Widget _frontWave(context) {

    final path = new Path();
    final size = MediaQuery.of(context).size;
    final height = size.height * 0.7;

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
    final height = size.height * 0.7;

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
    final height = size.height * 0.7;

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