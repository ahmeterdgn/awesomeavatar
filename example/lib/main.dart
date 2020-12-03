import 'package:flutter/material.dart';
import 'package:awesomeavatar/awesomeavatar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Avatar'),
        ),
        body: Center(
          child: AwesomeAvatar(
            networkImage: "https://pbs.twimg.com/profile_images/558392148697939968/FSHEYq_5_400x400.png",
            backgroundColor: Colors.red,
            radius: 50,
            outRadius: 5,
          ),
        ),
      ),
    );
  }
}
