import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return TabletNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  DesktopNavbar({Key key}) : super(key: key);
  String heading = "Kwak's Portfolio";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
          child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "$heading",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Home',
                  style: TextStyle(
                    
                    color: Colors.white,
                  ),

                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Project',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Analasise',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30),
                 Text(
                  'UI',
                  style: TextStyle(color: Colors.white),
                ),
               
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TabletNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
