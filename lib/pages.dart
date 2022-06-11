import 'package:flutter/material.dart';
import 'package:app_geral/homePage.dart';
class MyPages extends StatefulWidget {
  MyPages() : super();

  @override
  MyPagesState createState() => MyPagesState();
}

class MyPagesState extends State<MyPages> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.green,
      child: Center(child: Text("put your pages here")),
      constraints: BoxConstraints.expand(),
    ),
    Container(
      child: homePage(),
      constraints: BoxConstraints.expand(),
    ),
    Container(
      color: Colors.green,
      child: Center(child: Text("put them in the _widgetOption list")),
      constraints: BoxConstraints.expand(),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          //BottomNavigationBarItem(
           // icon: Icon(Icons.attach_money ),
           // label: 'Comprar',
          //),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Meu Jardim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
