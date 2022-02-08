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
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7),
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

  Expanded buildKey(int number) {
    List<MaterialColor> colorList = [
      Colors.red, Colors.orange, Colors.yellow,
      Colors.green, Colors.teal, Colors.blue, Colors.purple];

    return Expanded(
      child: TextButton(onPressed: (){playBell(number);},
        child: Container(
          color: colorList[number - 1],
        ),
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
      ),
    );
  }
}
