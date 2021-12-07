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
        body: RichText(
          text: const TextSpan(
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontFamily: "Notable"),
              children: <TextSpan>[
                TextSpan(text: 'Hello '),
                TextSpan(style: TextStyle(color: Colors.red), children: <TextSpan>[
                  TextSpan(text: 'New '),
                  TextSpan(text: 'Big '),
                  TextSpan(text: 'World ', style: TextStyle(decoration: TextDecoration.underline)),
                ]),
                TextSpan(text: '!!'),
              ]),
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
