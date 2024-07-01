import 'package:dose_diaria/pages/telaBook.dart';
import 'package:dose_diaria/pages/telaEmotion.dart';
import 'package:dose_diaria/pages/telaPerson.dart';
import 'package:flip_card/flip_card.dart';
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
      theme: ThemeData(primaryColor: Color(0xf2b6c1).withOpacity(1.0)),
      home: Scaffold(
        //navegacao entre telas
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
              child: Stack(
                children: [
                  Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(40.0),
                      child: FlipCard(
                        fill: Fill.fillBack,
                        direction: FlipDirection.HORIZONTAL,
                        side: CardSide.FRONT,
                        front: Container(
                            decoration: BoxDecoration(
                                color: Color(0xf2b6c1).withOpacity(1.0),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                              child: Text(
                                'Acredite em você',
                                style: TextStyle(
                                    color: Color(0x283040).withOpacity(1.0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        back: Container(
                            decoration: BoxDecoration(
                              color: Color(0xf2b6c1).withOpacity(1.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(
                              child: Text(
                                'Você Consegue',
                                style: TextStyle(
                                    color: Color(0x283040).withOpacity(1.0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      )),
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
                  decoration: BoxDecoration(
                    color: Color(0xf2b6c1).withOpacity(1.0),
                  ),
                  currentAccountPicture: Align(
                      alignment:
                          Alignment(11.5, 3.5), // Altera o alinhamento aqui
                      child: CircleAvatar(
                        backgroundColor: Color(0x283040).withOpacity(1.0),
                        child: Text(
                          "PF",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )),
                  accountName: Text(
                    'Perfil',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0x283040).withOpacity(1.0),
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
          selectedItemColor: Color(0x283040).withOpacity(1.0),
          onTap: _navigate,
          currentIndex: _itemSelecionado,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions), label: "Emoções"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Diário"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          ],
        ), //Design dos widgets
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xf2b6c1).withOpacity(1.0)),
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
