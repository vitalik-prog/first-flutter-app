import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatelessWidget());
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter tutorial"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: const Text(
          "Hello world!!!",
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              letterSpacing: 3,
              color: Colors.grey,
              fontFamily: "Notable"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Text("Add"),
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}

