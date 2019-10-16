import 'package:flutter/material.dart';
import 'package:nu_flutter/app/pages/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NuBank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        canvasColor: Color(0xFF84269C),
        cardColor: Colors.white,
        dividerColor: Color(0xFFF6F7F6),
        fontFamily: 'Arial, sans-serif'
      ),
      home: HomeModule(),
    );
  }
}
