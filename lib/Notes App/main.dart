import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/adapters.dart';

import 'splash_screen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('to_do_app Box');
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreenNotesApp(),
  ));
}
