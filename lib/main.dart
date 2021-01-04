import 'package:disenios/src/models/layout_model.dart';
import 'package:disenios/src/pages/launcher_page.dart';
import 'package:disenios/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/pages/launcher_tablet_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeChanger(2)),
    ChangeNotifierProvider(create: (context) => LayoutModel())
  ], child: MyApp()));
}
/*
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeChanger(2), child: MyApp()
    )
  );
}
*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      home: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          final screenSize = MediaQuery.of(context).size;

          if (screenSize.width > 500) {
            return Container(
              child: LauncherTabletPage(),
            );
          } else {
            return Container(
              child: LauncherPage(),
            );
          }
        },
      ),
    );
  }
}
