import 'package:flutter/material.dart';
import 'package:ui_practice/screens/form_page.dart';
// import 'package:ui_practice/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 252, 253, 253)),
      home: FormPage(),
    );
  }
}
