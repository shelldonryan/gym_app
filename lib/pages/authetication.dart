import 'package:flutter/material.dart';
import 'package:flutter_firstproject/constants/myColors.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [MyColors.bottomGradientColor, MyColors.topGradientColor],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    "assets/dumbbell.png",
                    height: 128,
                    color: MyColors.redFla,
                  ),
                  const Text(
                    "GymApp",
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: MyColors.redFla),
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
