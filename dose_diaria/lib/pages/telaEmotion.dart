import 'package:flutter/material.dart';

class TelaEmotion extends StatelessWidget {
  const TelaEmotion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      
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
                  color: Color(0x283040).withOpacity(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.emoji_emotions,
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
                      Icons.emoji_emotions,
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
                      Icons.emoji_emotions,
                      color: Color(0xf2b6c1).withOpacity(1.0),
                    ),
                    title: Text(
                    'Raiva',
                    style: TextStyle(color: Color(0xf2b6c1).withOpacity(1.0), fontWeight: FontWeight.bold, fontSize: 16,),),
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
                      leading: Icon(Icons.emoji_emotions, color: Color(0xf2b6c1).withOpacity(1.0),),
                      title: Text('Medo', style: TextStyle(color: Color(0xf2b6c1).withOpacity(1.0), fontWeight: FontWeight.bold, fontSize: 16),),
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





























