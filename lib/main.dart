import 'package:etisalat_project/exercise_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,

      ///Exercise One
      home: const ExerciseOne(),

      ///Exercise Two
      // home: const ExerciseTwo(),
    );
  }
}
