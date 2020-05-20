import 'dart:html';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'box.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Avatar(),
                SizedBox(height: 25),
                Text(
                  'Hewan Shrestha',
                  style: GoogleFonts.merienda(
                    textStyle: TextStyle(fontSize: 25, color: Colors.grey[400], fontWeight: FontWeight.w700),)
                ),
                SizedBox(height: 15),
                Text(
                  'Flutter Developer',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(
                    fontSize: 20, color: Colors.grey[400]))
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Buttons(icon: FontAwesomeIcons.facebookF),
                    SizedBox(width: 25),
                    Buttons(icon: FontAwesomeIcons.twitter),
                    SizedBox(width: 25),
                    Buttons(icon: FontAwesomeIcons.instagram),
                    SizedBox(width: 25),
                    Buttons(icon: FontAwesomeIcons.linkedin),
                    SizedBox(width: 25),
                    Buttons(icon: FontAwesomeIcons.github),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Buttons extends StatelessWidget {
  final IconData icon;
  const Buttons({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: shadow,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: shadow,
      child: Container(
        decoration: shadow,
        padding: EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/logo.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}