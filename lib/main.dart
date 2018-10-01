import 'package:flutter/material.dart';

// Color backRed = const Color.fromARGB(220, 220, 220, 220);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(title: Text('Dienstplan FlltrTest')),
        body: Column(
          children: [

            Container(
              width: 1000.0,
              margin: EdgeInsets.all(2.0),
              child: Card(
                child: Column(children: <Widget>[
                  Text('Mittwoch | 03.10.2018 | 18:00 - 06:00 Uhr | Kalsdorf | RTW | Kerschner Benjamin, Ing.'),
                ]),
              ),
            ),

            Container(
              width: 1000.0,
              margin: EdgeInsets.all(2.0),
              child: Card(
                child: Column(children: <Widget>[
                  Text('Mittwoch | 03.10.2018 | 18:00 - 06:00 Uhr | Kalsdorf | RTW | Kerschner Benjamin, Ing.'),
                ]),
              ),
            ),

            Container(
              width: 1000.0,
              margin: EdgeInsets.all(2.0),
              child: Card(
                child: Column(
                  children: <Widget>[Text('Sonntag | 14.10.2018 | 18:00 - 06:00 Uhr | Kalsdorf | RTW')],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
