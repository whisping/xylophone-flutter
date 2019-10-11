import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  List colors = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.teal, Colors.blue, Colors.purple];

  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey(int number) {
    int x = number - 1;
    return Expanded(
      child: FlatButton(
        color: colors[x],
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7),
            ],
          ),
        ),
      ),
    );
  }
}
