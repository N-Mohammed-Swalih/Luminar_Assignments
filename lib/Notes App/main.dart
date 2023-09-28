import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/adapters.dart';
import 'splash_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Notes App Box');
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreenNotesApp(),
  ));
}
