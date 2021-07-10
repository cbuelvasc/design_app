import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design_app/screens/basic_design.dart';
import 'package:design_app/screens/home_screen.dart';
import 'package:design_app/screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desing App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (BuildContext context) => BasicDesignScreen(),
        'scroll_screen': (BuildContext context) => ScrollDesigScreen(),
        'home_screen': (BuildContext context) => HomeScreen(),
      },
    );
  }
}
