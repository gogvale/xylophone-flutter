import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _notes(7),
            ),
          ),
        ),
      ),
    );
  }
}

void playSound(int i) {
  final player = AudioCache();
  player.play('note$i.wav');
}

List<Expanded> _notes(int count) {
  final colorList = [
    Colors.redAccent,
    Colors.orangeAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.teal,
    Colors.blueAccent,
    Colors.deepPurpleAccent
  ];
  return List.generate(
    count,
    (i) => Expanded(
      child: TextButton(
        onPressed: () => playSound(i + 1),
        child: Text(""),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colorList[i]),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
      ),
    ),
  ).toList(); // replace * with your rupee or use Icon instead
}
