import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      Magic8(),
    );

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  @override
  int image_number = 1;
  void changeImage() {
    image_number = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(fontSize: 30),
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset('images/ball$image_number.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
