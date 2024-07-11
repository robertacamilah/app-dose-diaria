import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TelaEmotion extends StatelessWidget {
  const TelaEmotion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xf2b6c1).withOpacity(1.0),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Card(
                  elevation: 10,
                  color: Color(0x283040).withOpacity(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.sentiment_very_satisfied,
                      color: Color(0xf2b6c1).withOpacity(1.0),
                    ),
                    title: Text(
                      'Feliz',
                      style: TextStyle(
                        color: Color(0xf2b6c1).withOpacity(1.0),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Card(
                  elevation: 10,
                  color: Color(0x283040).withOpacity(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.sentiment_dissatisfied_outlined,
                      color: Color(0xf2b6c1).withOpacity(1.0),
                    ),
                    title: Text(
                      'Triste',
                      style: TextStyle(
                          color: Color(0xf2b6c1).withOpacity(1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Card(
                  elevation: 10,
                  color: Color(0x283040).withOpacity(1.0),
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.faceAngry,
                      color: Color(0xf2b6c1).withOpacity(1.0),
                    ),
                    title: Text(
                      'Raiva',
                      style: TextStyle(
                        color: Color(0xf2b6c1).withOpacity(1.0),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Card(
                  elevation: 10,
                  color: Color(0x283040).withOpacity(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.sentiment_very_dissatisfied_outlined,
                      color: Color(0xf2b6c1).withOpacity(1.0),
                    ),
                    title: Text(
                      'Medo',
                      style: TextStyle(
                          color: Color(0xf2b6c1).withOpacity(1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
