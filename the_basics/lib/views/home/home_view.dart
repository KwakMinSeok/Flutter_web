import 'package:flutter/material.dart';
import 'package:the_basics/widgets/naviagation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavigationBar()
        ],
      ),
    );
  }
}