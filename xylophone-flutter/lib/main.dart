import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          )
        ),
      ),
    );
  }

  void playBell(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey(Color color, int number) {

    return Expanded(
      child: TextButton(onPressed: (){playBell(number);},
        child: Container(
          color: color,
        ),
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
      ),
    );
  }
}
