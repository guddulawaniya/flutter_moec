import 'package:demo/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'main.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _mobile = TextEditingController();
  final _password = TextEditingController();

  bool _namevalidate = false;
  bool _emailvalidate = false;
  bool _mobilevalidate = false;
  bool _passwordvalidate = false;
  bool passwordVisible=true;

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
                ]


            )
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              height: 650,
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
                      "Registration",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      controller: _name,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "Your Name ",
                          errorText: _namevalidate ? 'Required' : null,
                          labelStyle: TextStyle(fontSize: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email Address",
                          errorText: _emailvalidate ? 'Required' : null,
                          labelStyle: TextStyle(fontSize: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(

                      controller: _mobile,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      decoration: InputDecoration(
                          errorText: _mobilevalidate ? 'Required' : null,
                          labelText: "Mobile NO ",
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
                      maxLength: 16,
                      decoration: InputDecoration(
                          errorText: _passwordvalidate ? 'Required' : null,
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

                          labelText: "Password ",
                          labelStyle: TextStyle(fontSize: 18),
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _name.text.isEmpty
                                  ? _namevalidate = true
                                  : _namevalidate = _email.text.isEmpty
                                  ?_emailvalidate = true : _mobile.text.isEmpty
                                  ? _mobilevalidate = true
                                  : _mobilevalidate = _password.text.isEmpty
                                  ? _passwordvalidate = true
                                  : _passwordvalidate = Navigator.pushReplacement(
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
                            "Create",
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
                            Text("I Have Already Account: "),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, PageTransition(child: login(), type: PageTransitionType.rightToLeft));
                                },
                                child: Text(
                                  "Login",
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
