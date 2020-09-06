import 'dart:ui';

import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          SizedBox(
          
            child: Image.asset('image/hummingbird.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min ,
            children: [
              _NavBarItem('Episodes'),
              SizedBox(width: 60,),
              _NavBarItem('About')
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,style: TextStyle(fontSize:18),)
    );
  }
}