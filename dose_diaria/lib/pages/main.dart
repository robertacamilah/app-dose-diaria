import 'package:flutter/material.dart';
import 'homePage.dart';
import 'telaEmotion.dart';
import 'telaEmotion.dart';
import 'telaBook.dart';
import 'telaPerson.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'splashScreen.dart';
import 'package:flip_card/flip_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const TelaEmotion());
}

class routes extends StatelessWidget {
  const routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/TelaEmotion': (context) => TelaEmotion(),
        'TelaBook': (context) => TelaBook(),
        '/TelaPerson': (context) => TelaPerson()
      },
    );
  }
}
