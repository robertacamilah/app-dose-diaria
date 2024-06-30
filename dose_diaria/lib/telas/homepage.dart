import 'package:dose_diaria/telas/telaBook.dart';
import 'package:dose_diaria/telas/telaEmotion.dart';
import 'package:dose_diaria/telas/telaPerson.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _itemSelecionado = 0;

  void _navigate(int index) {
    setState(() {
      _itemSelecionado = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Color(0x283040).withOpacity(1.0),
      ),
      home: Scaffold(
        //navegacao entre telas
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Stack(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 400,
                      child: Card(
                        elevation: 20,
                        color: Color(0xf2b6c1).withOpacity(1.0),
                        //ainda tem que configurar as mensagens
                        child: Text('Você consegue',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 500,
                                fontSize: 40,
                                color: Color(0x283040).withOpacity(1.0)),
                            textAlign: TextAlign.center),
                      ))
                ],
              ),
            ),
          ),
        ),

        //Menu de navegacao lateral, Drawer ou endDrawer
        drawer: Drawer(
          backgroundColor: Color(0x283040).withOpacity(1.0),
          child: Column(
            children: [
              //Configuracao do header
              UserAccountsDrawerHeader(

                  //Image.asset('dose_diaria/assets/images/logo1.png',height: 128,)),
                  accountName: Text(
                    'Perfil',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text('email@email.com')),
              ListTile(
                leading:
                    Icon(Icons.star, color: Color(0xf2b6c1).withOpacity(1.0)),
                title: Text(
                  'Favoritos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xf2b6c1).withOpacity(1.0)),
                ),

                //subtitle: Text('Selecione a opcao de menu'),
              ),
              ListTile(
                leading: Icon(
                  Icons.edit,
                  color: Color(0xf2b6c1).withOpacity(1.0),
                ),
                title: Text(
                  'Curiosidades',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xf2b6c1).withOpacity(1.0)),
                ),

                //subtitle: Text('Selecione a opcao de menu'),
              ),
              ListTile(
                leading: Icon(
                  Icons.calendar_month,
                  color: Color(0xf2b6c1).withOpacity(1.0),
                ),
                title: Text(
                  'Calendário',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xf2b6c1).withOpacity(1.0)),
                ),

                //subtitle: Text('Selecione a opcap de menu'),
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Color(0xf2b6c1).withOpacity(1.0),
                ),
                title: Text(
                  'Localização',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xf2b6c1).withOpacity(1.0)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings,
                    color: Color(0xf2b6c1).withOpacity(1.0)),
                title: Text('Configurações',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xf2b6c1).withOpacity(1.0))),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _navigate,
          currentIndex: _itemSelecionado,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions), label: "Emoções"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Diário"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          ],
        ), //Design dos widgets
        appBar: AppBar(
          backgroundColor: Color(0x203040).withOpacity(1.0),
          elevation: 30,
          //altura do appBar
          toolbarHeight: 180,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(500),
                  bottomLeft: Radius.elliptical(900, 150))),
          title: Text(
            'Dose diária',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xf2b6c1).withOpacity(1.0),
                fontSize: 30),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
