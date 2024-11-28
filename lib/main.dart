import 'package:flutter/material.dart';
import 'package:fur_ever_homes/screens/getStarted/get_started.dart';
import 'package:fur_ever_homes/screens/login/signup/login_screen.dart';
import 'package:fur_ever_homes/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GetStarted(),
    );
  }
}

