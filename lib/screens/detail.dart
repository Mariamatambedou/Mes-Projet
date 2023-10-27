import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/ressources/const_global.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(couleurBac),
      appBar: AppBar(
        title: Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
          child: ListView(shrinkWrap: true, children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/im.png'),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Card(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              statusDescription,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.email,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              email,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 15.0,
              ),
            )
          ],
        )
      ])),
    );
  }
}
