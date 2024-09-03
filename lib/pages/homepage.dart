import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello Mofos",
        style: TextStyle(
         fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontSize: 20,
        ),),
      ),
    );
  }
}
