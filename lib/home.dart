import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("biodata saya"),
        backgroundColor: Colors.amber,
      ),
      body:Container(
    child: Text("Saya belajar Flutter",
    style: TextStyle(color: Colors.red),
    ),
    color: Colors.blue,
    ),
    );
    
  }
}