import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:tela_dribble1/tela_player.dart';
import 'home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xffedf0f7)),
      home: HomePage(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        defaultScale: true,
        minWidth: 400,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(450,name: MOBILE),
          ResponsiveBreakpoint.resize(830,name: MOBILE),
        ]
      ),
    );
  }
}
