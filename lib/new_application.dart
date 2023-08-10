import 'package:flutter/material.dart';

class new_application extends StatelessWidget {
  const new_application({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("New Application"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white54

        ),
      ),

    );
  }
}
