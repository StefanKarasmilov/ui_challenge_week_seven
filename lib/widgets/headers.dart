import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// En este archivo está todos los headers de diferentes formas

class HeaderCuadrado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 300,
      color: Color(0xff615AAB), // Se añade 0xff para que hacepte hexadecimales
    );

  }

}


class HeaderBordesRedondeados extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff615AAB), // Se añade 0xff para que hacepte hexadecimales
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70)
        ),
      ),
    );

  }

}


class HeaderDiagonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615AAB), // Se añade 0xff para que hacepte hexadecimales
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );

  }

}

class _HeaderDiagonalPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // fill para rellenar, stroke para pintar
    lapiz.strokeWidth = 2;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, lapiz);

  }
  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderTriangular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615AAB), // Se añade 0xff para que hacepte hexadecimales
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );

  }

}

class _HeaderTriangularPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // fill para rellenar, stroke para pintar
    lapiz.strokeWidth = 2;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, lapiz);

  }
  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderPico extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615AAB), // Se añade 0xff para que hacepte hexadecimales
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );

  }

}


class _HeaderPicoPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // fill para rellenar, stroke para pintar
    lapiz.strokeWidth = 2;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5 , size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, lapiz);

  }
  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderCurvo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615AAB), // Se añade 0xff para que hacepte hexadecimales
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );

  }

}


class _HeaderCurvoPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // fill para rellenar, stroke para pintar
    lapiz.strokeWidth = 20;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    // los dos primeros párametros especifican hasta donde se crea la curvatura
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.4, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, lapiz);

  }
  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderWave extends StatelessWidget {

  final Color color;

  const HeaderWave({
    @required this.color
  });

  @override
  Widget build(BuildContext context) {


    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615AAB), // Se añade 0xff para que hacepte hexadecimales
      child: CustomPaint(
        painter: _HeaderWavePainter(this.color),
      ),
    );

  }

}


class _HeaderWavePainter extends CustomPainter {

  final Color color;

  _HeaderWavePainter(this.color);


  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = Paint();

    // Propiedades
    lapiz.color = color; //Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // fill para rellenar, stroke para pintar
    lapiz.strokeWidth = 20;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    // los dos primeros párametros especifican hasta donde se crea la curvatura
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    // path.lineTo(0, size.height * 0.5);

    // // Bottom

    // path.moveTo(0, size.height);
    // path.lineTo(0, size.height * 0.90);
    // path.quadraticBezierTo(size.width * 0.25, size.height * 0.85, size.width * 0.5, size.height * 0.90);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.95, size.width, size.height * 0.90);
    // path.lineTo(size.width, size.height);

    canvas.drawPath(path, lapiz);

  }
  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderWaveGradient extends StatelessWidget {

  final List<Color> colors;
  final Path path;
  final double height;
  final double width;

  HeaderWaveGradient({
    @required this.colors, 
    @required this.path, 
    this.height = double.infinity, 
    this.width = double.infinity
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      width: width,
      // color: Color(0xff615AAB), // Se añade 0xff para que hacepte hexadecimales
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(colors, path),
      ),
    );

  }

}


class _HeaderWaveGradientPainter extends CustomPainter {

  final List<Color> colors;
  final Path path;

  _HeaderWaveGradientPainter(this.colors, this.path);

  @override
  void paint(Canvas canvas, Size size) {
    
    final Rect rect = new Rect.fromCircle(
      center: Offset(159, 17),
      radius: 180
    );

    final Gradient gradiente = new LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: colors,
      // stops: [
      //   0.4,
      //   0.3,
      //   1.0
      // ]
    );

    final lapiz = Paint()..shader = gradiente.createShader(rect);

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // fill para rellenar, stroke para pintar
    lapiz.strokeWidth = 20;

    // final path = Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    // los dos primeros párametros especifican hasta donde se crea la curvatura
    // path.quadraticBezierTo(size.width * 0.17, size.height * 0.30, size.width * 0.4, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.17, size.height * 0.30, size.width * 0.4, size.height * 0.25);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.18, size.width, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.18, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    // path.lineTo(0, size.height * 0.5);

    // // Bottom

    // path.moveTo(0, size.height);
    // path.lineTo(0, size.height * 0.90);
    // path.quadraticBezierTo(size.width * 0.25, size.height * 0.85, size.width * 0.5, size.height * 0.90);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.95, size.width, size.height * 0.90);
    // path.lineTo(size.width, size.height);

    canvas.drawPath(path, lapiz);

  }
  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class IconHeader extends StatelessWidget {

  final IconData icon;
  final String titulo;
  final String subTitulo;
  final Color color1;  
  final Color color2;

  const IconHeader({ 
    @required this.icon,
    @required this.titulo, 
    @required this.subTitulo, 
    this.color1 = Colors.grey, 
    this.color2 = Colors.blueGrey
  });

  @override
  Widget build(BuildContext context) {

    final Color colorBlanco = Colors.white.withOpacity(0.7);

    return Stack(
      children: <Widget>[
        _IconHeaderBackground(
          color1: this.color1,
          color2: this.color2,
        ),

        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(this.icon, size: 250, color: Colors.white.withOpacity(0.2),)
        ),

        Column(
          children: <Widget>[
            SizedBox(height: 80, width: double.infinity,),
            Text(this.subTitulo, style: TextStyle(fontSize: 20, color: colorBlanco),),
            SizedBox(height: 20,),
            Text(this.titulo, style: TextStyle(fontSize: 25, color: colorBlanco, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            FaIcon(this.icon, size: 80, color: Colors.white,),
          ],
        )

      ],
    );

  }

}

class _IconHeaderBackground extends StatelessWidget {

  final Color color1;  
  final Color color2;

  const _IconHeaderBackground({
    @required this.color1, 
    @required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color> [
            this.color1,
            this.color2,
          ]
        )
      ),
    );
  }
}