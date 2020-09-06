import 'package:flutter/material.dart';
import 'package:web_2/LeftBodyPage/leftbody.dart';
import 'package:web_2/RightBodyPage/rightbody.dart';
import 'NavbarPage/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData(primarySwatch: Colors.blue);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple[500], Colors.blue[400]],
                end: Alignment.centerLeft,
                begin: Alignment.centerRight)),
        child: Column(
          children: [
            NavBar(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  LeftBodyScreen(),
                  RightBodyScreen(),
                ])
          ],
        ),
      ),
    );
  }
}
