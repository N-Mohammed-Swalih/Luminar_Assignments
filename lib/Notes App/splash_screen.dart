import 'dart:async';
import 'package:assignment/Notes%20App/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreenNotesApp extends StatefulWidget {
  const SplashScreenNotesApp({super.key});

  @override
  State<SplashScreenNotesApp> createState() => _SplashScreenNotesAppState();
}

class _SplashScreenNotesAppState extends State<SplashScreenNotesApp> {
  @override
  void initState() {
    //what will happen when the page / app is  first launched
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
              HomeScreenNotesApp())); //when timer completes it redirects to home
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.3,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1616628188550-808682f3926d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
          ),
          child: const Center(
            child: Column(children: [
              SizedBox(
                height: 270,
              ),
              Positioned(
                  child: FaIcon(FontAwesomeIcons.noteSticky,
                      size: 100, color: Colors.white70)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Notes App",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
        ));
  }
}
