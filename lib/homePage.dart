import 'package:flutter/material.dart';
import 'package:app_geral/pageView_plants.dart';
import 'dart:async';
import 'package:app_geral/pageView_garden.dart';

class homePage extends StatefulWidget {
  _homePage createState() => _homePage();
}

class _homePage extends State<homePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var controller = PageController(
    viewportFraction: 1 ,
    initialPage: 0,
  );
  final drawer = Drawer(
    child: ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.notifications_active),
          title: Text("Notificações"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text("Privacidade"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("Sobre"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.help_center ),
          title: Text("Ajuda"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.sensor_door),

          title: Text("Sair"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){},
        ),
      ],
    ),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: drawer,
      appBar: AppBar(

        title: const Text('',
            style: TextStyle(color: Color(0xff16613D), fontWeight: FontWeight.bold)
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          //IconButton(icon: Icon(Icons.settings, color: Color(0xff16613D)),
            //onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
        //  ),
        ],
      ),
      body: Container(
        child: Align(
          alignment: Alignment.topCenter,
          child: Wrap(
            runSpacing: 6.0,
            direction: Axis.horizontal,
            children: [
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment(-0.5, 0.6),
                child: Text('Dicas ',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xff16613D)
                  ),
                ),
              ),
              pageView_plants(),
              Container(
                alignment: Alignment(-0.5, 0.6),
                child: Text('Meu Jardim ',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xff16613D)
                  ),
                ),
              ),
              pageView_garden(),
            ]
          ),
        )
      )
    );

  }

}