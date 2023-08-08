import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class application extends StatefulWidget {
  const application({super.key});

  @override
  State<application> createState() => _applicationState();
}

class _applicationState extends State<application> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
