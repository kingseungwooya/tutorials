import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //  우측 상단 디버그 라벨 없애기 
      title: 'First app',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[700],
        appBar: AppBar(
          title: Text('BBANTO'),
          centerTitle: true,
          backgroundColor: Colors.amber[500],
          elevation: 0.0, // appbar 밑에 그림자 없애줌
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('pokemon.png'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Text(
                'Name',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'BBANTO',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'BBANTO Power Level',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '10',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: const <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),)
                ],
              ),
              Row(
                children: const <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('face hero tattoo',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),)
                ],
              ),
              Row(
                children: const <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('fire flames',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),)
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('ball.png'),
                  radius: 40.0,
                  backgroundColor: Colors.amber[700],
                ),
              )
            ],
          ),
        )
    );
  }
}
