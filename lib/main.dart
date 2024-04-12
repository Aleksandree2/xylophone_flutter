import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded clickedbutton(Color n1, int n2) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('note$n2.wav'));
          },
          style: TextButton.styleFrom(
              backgroundColor: n1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          child: const Text("", style: TextStyle(color: Colors.white))),
    );
  }
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            clickedbutton(Colors.black, 1),
            clickedbutton(Colors.green, 2),
            clickedbutton(Colors.white, 3),
            clickedbutton(Colors.red, 4),
            clickedbutton(Colors.blue, 5),
            clickedbutton(Colors.yellow, 6),
            clickedbutton(Colors.pink, 7),
          ]),
        ),
      ),
    );
  }
}
