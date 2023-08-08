import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class programpage2 extends StatefulWidget {
  const programpage2({super.key});

  @override
  State<programpage2> createState() => _programpage2State();
}

class _programpage2State extends State<programpage2> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
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
