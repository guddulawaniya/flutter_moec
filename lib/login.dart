import 'dart:ui';

import 'package:demo/main.dart';
import 'package:demo/registration.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<StatefulWidget> createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<login> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _validate = false;
  bool passwordVisible=true;
  bool _passValidation = false;

  void initstate() {
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color.fromARGB(255, 231, 238, 246),
                Color.fromARGB(255, 26, 81, 158),
              ])),
          child: Center(
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              height: 420,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email Address",
                          errorText: _validate ? 'Required' : null,
                          labelStyle: TextStyle(fontSize: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(
                                    () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                          ),
                          errorText: _passValidation ? 'Required' : null,
                          labelText: "Password ",
                          labelStyle: TextStyle(fontSize: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _email.text.isEmpty
                                  ? _validate = true
                                  : _validate = _password.text.isEmpty
                                      ? _passValidation = true
                                      : _passValidation = Navigator.pushReplacement(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .topToBottom,
                                              child: MyHomePage(
                                                title: 'Dashboard',
                                              ))) as bool;
                            });
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Didn't have a account : "),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, PageTransition(child: Registration(), type: PageTransitionType.leftToRight));
                            },
                            child: Text(
                              "Registration",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                              ),
                            ))
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
