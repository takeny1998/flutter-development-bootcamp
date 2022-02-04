import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/heebeom.jpeg'),
              ),
              Text(
                'Heebeom Yang',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text('FLUTTER BOOTCAMP TRAINEE',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 2.5,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro',
                  )),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+82 010 9427 3520',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 18.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.email, color: Colors.teal),
                    SizedBox(width: 10.0),
                    Text('takeny1998@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 18.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ))),
    );
  }
}
