import 'package:disenios/src/theme/theme.dart';
import 'package:disenios/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final accentColor = appTheme.currentTheme.accentColor;

    return Scaffold(
      body: HeaderCurvasGradient(
        color: accentColor,
      ),
    );
  }
}
