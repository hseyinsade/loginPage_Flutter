import 'package:flutter/material.dart';
import 'package:flutter_soru/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_soru/constants.dart';

void main() {
  runApp(
      MyApp()); // tum Widgetlar Büyük harfle başlar yani PascalCase standartını korur.
}

class MyApp extends StatelessWidget {
  // stateless duragan olan kullanıcıya gore degısmeyen widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug mod gorunumunu false yaptım
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
