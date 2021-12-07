import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        body: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontFamily: "Notable"),
                    children: <TextSpan>[
                      TextSpan(text: 'Hello '),
                      TextSpan(
                          style: TextStyle(color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(text: 'New '),
                            TextSpan(text: 'Big '),
                            TextSpan(
                                text: 'World ',
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          ]),
                      TextSpan(text: '!!!'),
                    ]),

              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: SvgPicture.asset('assets/img/play.svg', alignment: Alignment.bottomCenter,),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Image.network('https://source.unsplash.com/random/'),
            ),
            Image.asset('assets/img/podcast5.jpg', width: 100, height: 100,),
            const Image(
              image: AssetImage('assets/img/podcast1.jpg'),
            ),
          ],
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
