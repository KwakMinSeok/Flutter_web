import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
Color mycolor;
Decoration indicolor;
static int indexdata;
List<Color> mycolorlist=[Colors.yellow[200],Colors.orange[200],Colors.green[200]];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            elevation: 0,
            bottom: TabBar(
                labelColor: Colors.redAccent,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("APPS"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("MOVIES"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("GAMES"),
                    ),
                  ),
                  Tab(

                    child: Text(""),
                  ),
                  Tab(
                     child: Text(""),
                  )
                ]
            ),
          ),
          body: TabBarView(children: [
            ListView(
              children: [Container(
                child: Column(
                  children: [
                    Text("1",style: TextStyle(fontSize: 300),),
                     Text("1",style: TextStyle(fontSize: 300),),
                      Text("1",style: TextStyle(fontSize: 300),),
                       Text("1",style: TextStyle(fontSize: 300),),
                        Text("1",style: TextStyle(fontSize: 300),),
                         Text("1",style: TextStyle(fontSize: 300),),
                          Text("1",style: TextStyle(fontSize: 300),),
                          
                    
                  ],
                )
              ),],
            ),
            
            Icon(Icons.movie),
            Icon(Icons.games),
            Container(),
            Container()
          ]),
        )
     )
    
    );
  }
}