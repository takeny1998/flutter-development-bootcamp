import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,

        appBar: AppBar(
          title: const Center(child: Text('I Am Rich')),
          backgroundColor: Colors.blueGrey[900],
        ),

        body: const Center(
          child: Image(
            image: NetworkImage('http://www.w3bai.com/css/img_lights.jpg'),
          ),
        ),
      ),
    ),
  );
}
