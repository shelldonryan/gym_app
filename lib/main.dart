import 'package:flutter_firstproject/pages/authetication.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GymApp());
}

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Gym App DotCode",
      debugShowCheckedModeBanner: false,
      home: AuthenticationPage(),
    );
  }
}