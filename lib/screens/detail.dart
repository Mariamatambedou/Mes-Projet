import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff052555),
      appBar: AppBar(
        title: Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: <Widget>[
          CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/im.png'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Card(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "En tant que DevOps, je suis un professionnel de l'informatique spécialisé dans la collaboration entre le développement logiciel et les opérations informatiques. Mon rôle consiste à automatiser les processus, à mettre en place des pipelines d'intégration continue et de déploiement continu, et à favoriser la communication entre les équipes. Je m'efforce de garantir une livraison rapide, fiable et sécurisée des logiciels, tout en surveillant les systèmes en production pour une réactivité optimale aux incidents. Mon objectif principal est d'optimiser l'efficacité et la qualité du développement logiciel tout au long de son cycle de vie.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.email, color: Colors.white),
            ],
          )
        ]),
      )),
    );
  }
}
