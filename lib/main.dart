import 'package:assignment/splash_page_assignment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp( 
    debugShowCheckedModeBanner: false,
    home : SplashPage()
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}