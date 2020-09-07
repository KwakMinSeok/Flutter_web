import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(13),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.only(right:90),
                width: MediaQuery.of(context).size.width / 3.3,
                child: TabBar(
                 indicatorPadding: EdgeInsets.all(4),
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 4),
                      insets: EdgeInsets.only(right: 2, left: 5)),
                  tabs: [
                    Tab(
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Project',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Anaysis',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Business',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          HomeWidget(),
          // Center(child:Text('1')),
          Center(child: Text('2')),
          Center(child: Text('3')),
          Center(child: Text('4')),
        ]),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
            width: 1400,
            height: 600,
            color: Colors.amber,
          ),
        ),
        Text("1",style: TextStyle(
          fontSize: 30
        ),),
        Text("1",style: TextStyle(
          fontSize: 30
        ),),
        Text("1",style: TextStyle(
          fontSize: 30
        ),),
        Text("1",style: TextStyle(
          fontSize: 30
        ),),
        Text("1",style: TextStyle(
          fontSize: 30
        ),),
      ],
    );
  }
}
