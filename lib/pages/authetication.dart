import 'package:flutter/material.dart';
import 'package:flutter_firstproject/utils/decoration_field_auth.dart';
import 'package:flutter_firstproject/utils/myColors.dart';
import 'home.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  bool isSigned = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Container(
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //       colors: [
          //         MyColors.bottomGradientColor,
          //         MyColors.topGradientColor
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(
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
                      const SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        decoration: getAuthInputDecoration("E-mail"),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Empty Field";
                          }
                          if (value.length < 5) {
                            return "This e-mail is very short";
                          }
                          if (!value.contains("@")) {
                            return "This e-mail is invalid";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        decoration: getAuthInputDecoration("Password"),
                        obscureText: true,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Empty Field";
                          }
                          if (value.length < 5) {
                            return "This password is very short";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Visibility(
                          visible: isSigned,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration:
                                    getAuthInputDecoration("Confirm password"),
                                obscureText: true,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "Empty Field";
                                  }
                                  if (value.length < 5) {
                                    return "The password is very short";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              TextFormField(
                                decoration: getAuthInputDecoration("Username"),
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "Empty Field";
                                  }
                                  if (value.length < 3) {
                                    return "This username is very short";
                                  }
                                  return null;
                                },
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          authButtonClicked();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.redFla,
                        ),
                        child: Text(
                          (!isSigned) ? "Sign-in" : "Sign-up",
                          style: const TextStyle(color: Colors.white54),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextButton(
                          onPressed: () {
                            isSigned = !isSigned;
                            setState(() {});
                          },
                          child: const Text(
                            "Don't have an account? Sign-up",
                            style: TextStyle(color: MyColors.redFla),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  authButtonClicked() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WorkoutPage()),
      );
    } else {
      print("Invalid");
    }
  }
}
