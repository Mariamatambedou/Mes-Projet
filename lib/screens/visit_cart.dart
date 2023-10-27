import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/ressources/const_global.dart';
import 'package:test/screens/detail.dart';

class VisitCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(couleurBac),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Ma carte de visite'),
      ),
      body: _buildBody(),
    );
  }
}

class _buildBody extends StatelessWidget {
  const _buildBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/im.png'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  nomCarteDeVisite,
                  style: GoogleFonts.lato(
                    fontSize: 30.0,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textDescriptif,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 20.0,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Details();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, // Couleur de fond du bouton
              ),
              child: Text('En savoir plus',
                  style: GoogleFonts.lato(
                    fontSize: 20.0,
                    height: 1.5,
                    color: Colors.white70,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
