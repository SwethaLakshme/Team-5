import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Voice Prescription',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Preview Prescription'),
        ),
        body: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("assets/images/manasa.png"),
                fit: BoxFit.cover,
              ),
            ),
        ),
      ),
    );
  }
}

