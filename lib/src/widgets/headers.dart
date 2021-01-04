import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
    );
  }
}

class HeaderCostado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCostadoPainter(),
      ),
    );
  }
}

class _HeaderCostadoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint();

    //propiedades
    paint.color = Color(0xff615AAB);
    //paint.style = PaintingStyle.stroke; //fill para rellenar
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    //dibujar con el path
    //move to para mover levantando el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderTriangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTrianguloPainter(),
      ),
    );
  }
}

class _HeaderTrianguloPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint();

    //propiedades
    paint.color = Color(0xff615AAB);
    //paint.style = PaintingStyle.stroke; //fill para rellenar
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    //dibujar con el path
    //move to para mover levantando el lapiz
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint();

    //propiedades
    paint.color = Color(0xff615AAB);
    //paint.style = PaintingStyle.stroke; //fill para rellenar
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    //dibujar con el path
    //move to para mover levantando el lapiz
    path.lineTo(0, size.height * 0.15);
    path.lineTo(size.width * 0.5, size.height * 0.25);
    path.lineTo(size.width, size.height * 0.15);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  final Color color;

  const HeaderCurvo({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(this.color),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  final Color color;

  _HeaderCurvoPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint();

    //propiedades
    paint.color = this.color; //Color(0xff615AAB);
    //paint.style = PaintingStyle.stroke; //fill para rellenar
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    //dibujar con el path
    //move to para mover levantando el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.50, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    //path.lineTo(size.width, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderCurvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvasPainter(),
      ),
    );
  }
}

class _HeaderCurvasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint();

    //propiedades
    paint.color = Color(0xff615AAB);
    //paint.style = PaintingStyle.stroke; //fill para rellenar
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    //dibujar con el path
    //move to para mover levantando el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    //path.lineTo(size.width, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderCurvasGradient extends StatelessWidget {
  final Color color;

  const HeaderCurvasGradient({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvasGradientPainter(this.color),
      ),
    );
  }
}

class _HeaderCurvasGradientPainter extends CustomPainter {
  final Color color;

  _HeaderCurvasGradientPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final Rect rect = Rect.fromCircle(center: Offset(165.0, 55.0), radius: 180);

    /*final Gradient gradient = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff615B),
          Color(0xff615FFB),
          Color(0xff615EB),
        ],
        stops: [
          0.0,
          0.5,
          1.0
        ]);*/

    //final paint = Paint()..shader = gradient.createShader(rect);
    final paint = Paint();
    paint.color = this.color;
    //propiedades

    //paint.style = PaintingStyle.stroke; //fill para rellenar
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    //dibujar con el path
    //move to para mover levantando el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    //path.lineTo(size.width, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  const IconHeader(
      {@required this.icon,
      @required this.titulo,
      @required this.subtitulo,
      this.color1 = Colors.grey,
      this.color2 = Colors.blueGrey});

  @override
  Widget build(BuildContext context) {
    final Color colorBlanco = Colors.white.withOpacity(0.7);
    return Stack(
      children: [
        _iconHeaderBackbroud(
          color1: this.color1,
          color2: this.color2,
        ),
        Positioned(
          top: -50,
          left: -50,
          child: FaIcon(
            this.icon,
            size: 250,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 80,
              width: double.infinity,
            ),
            Text(
              this.subtitulo,
              style: TextStyle(fontSize: 20, color: colorBlanco),
            ),
            SizedBox(height: 20),
            Text(
              this.titulo,
              style: TextStyle(
                  fontSize: 25,
                  color: colorBlanco,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            FaIcon(
              this.icon,
              size: 80,
              color: Colors.white,
            )
          ],
        ),
      ],
    );
  }
}

class _iconHeaderBackbroud extends StatelessWidget {
  final Color color1;
  final Color color2;

  const _iconHeaderBackbroud({@required this.color1, @required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [this.color1, this.color2])),
    );
  }
}
