import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;
  final Function onPress;

  const BotonGordo(
      {this.icon = FontAwesomeIcons.question,
      this.texto,
      this.color1 = Colors.grey,
      this.color2 = Colors.blueGrey,
      @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => new _botonGordoModel(),
      child: Builder(
        builder: (BuildContext context) {
          final menuModel = Provider.of<_botonGordoModel>(context);

          menuModel.icon = this.icon;
          menuModel.texto = this.texto;
          menuModel.color1 = this.color1;
          menuModel.color2 = this.color2;
          menuModel.onPress = this.onPress;

          return GestureDetector(
            onTap: menuModel.onPress,
            child: Stack(
              children: [
                _BotonGordoBackground(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 140,
                      width: 40,
                    ),
                    FaIcon(
                      menuModel.icon,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(menuModel.texto,
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    FaIcon(
                      FontAwesomeIcons.chevronRight,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuModel = Provider.of<_botonGordoModel>(context);

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: FaIcon(
                menuModel.icon,
                size: 150,
                color: Colors.white.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(4, 6),
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(15),
          gradient:
              LinearGradient(colors: [menuModel.color1, menuModel.color2])),
    );
  }
}

class _botonGordoModel {
  IconData _icon = FontAwesomeIcons.question;
  String _texto;
  Color _color1 = Colors.grey;
  Color _color2 = Colors.blueGrey;
  Function _onPress;

  IconData get icon => this._icon;

  set icon(IconData icono) {
    this._icon = icono;
  }

  String get texto => this._texto;

  set texto(String txt) {
    this._texto = txt;
  }

  Color get color1 => this._color1;

  set color1(Color color) {
    this._color1 = color;
  }

  Color get color2 => this._color2;

  set color2(Color color) {
    this._color2 = color;
  }

  Function get onPress => this._onPress;

  set onPress(Function function) {
    this._onPress = function;
  }
}
