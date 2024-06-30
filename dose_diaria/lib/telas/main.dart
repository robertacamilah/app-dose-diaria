import 'package:flutter/material.dart';
import 'homepage.dart';
import 'telaEmotion.dart';
import 'telaEmotion.dart';
import 'telaBook.dart';
import 'telaPerson.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'splashScreen.dart';

void main() {
  runApp(const HomePage());
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
