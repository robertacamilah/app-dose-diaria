import 'package:flutter/material.dart';

class TelaBook extends StatefulWidget {
  const TelaBook({Key? key}) : super(key: key);

  @override
  State<TelaBook> createState() => _TelaBookState();
}

class _TelaBookState extends State<TelaBook> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(backgroundColor: Colors.black),),
    );
  }
}
