import 'package:flutter/material.dart';

class TelaEmotion extends StatelessWidget {
  const TelaEmotion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Card(
                  elevation: 10,
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Icon(
                      Icons.emoji_emotions,
                      color: Colors.purple.shade200,
                    ),
                    title: Text(
                      'Feliz',
                      style: TextStyle(
                        color: Colors.purple.shade200,
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
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Icon(
                      Icons.emoji_emotions,
                      color: Colors.purple.shade200,
                    ),
                    title: Text(
                      'Triste',
                      style: TextStyle(
                          color: Colors.purple.shade200,
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
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Icon(
                      Icons.emoji_emotions,
                      color: Colors.purple.shade200,
                    ),
                    title: Text(
                    'Raiva',
                    style: TextStyle(color: Colors.purple.shade200, fontWeight: FontWeight.bold, fontSize: 16,),),
                  ),
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: Card(
                    elevation: 10,
                    color: Colors.grey.shade300,
                    child: ListTile(
                      leading: Icon(Icons.emoji_emotions, color: Colors.purple.shade200,),
                      title: Text('Medo', style: TextStyle(color: Colors.purple.shade200, fontWeight: FontWeight.bold, fontSize: 16),),
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


























/*
class Telaemotion extends StatelessWidget {
  const Telaemotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          body: Stack(
            children: [
              Container(
                color: Color.fromARGB(255, 204, 204, 205),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.home_rounded, size: 40, color: Color(0xFFCE93D8)),
                      Icon(Icons.emoji_emotions, size: 40, color: Color(0xFFCE93D8)),
                      Icon(Icons.book_rounded, size: 40, color: Color(0xFFCE93D8)),
                      Icon(Icons.person_4_rounded, size: 40, color: Color(0xFFCE93D8), )
                    ],),),),
              ),
              //container baixo
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                ),
              ),
              //container topo
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xFFCE93D8),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                ),
                
                //icones superiores e config header
                child: Column(
                  children: [
                    Row( //tamanho da tela
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Icon(Icons.menu_outlined, size: 40, color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Icon(Icons.more_vert, size: 40, color: Colors.white,),
                        )
                      ],
                    ),
                   // Align(alignment: Alignment.bottomCenter,
                      //child: 
                      
                      Text('Olá, vamos tomar uma dose?', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, height: 7))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/