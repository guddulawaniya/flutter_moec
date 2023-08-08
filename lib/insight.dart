import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class insight extends StatefulWidget {
  const insight({super.key});

  @override
  State<insight> createState() => _insightState();
}

class _insightState extends State<insight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 5",
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
