import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white70,
      appBar:AppBar(
        title: const Center(child: Text('I Am Poor :(')),
        backgroundColor: Colors.black45,
      ),
      body: const Center(
        child: Image(
            image: AssetImage('images/coal.png'),
            width: 300.0,
        ),
      ),
    ),
  ));
}
