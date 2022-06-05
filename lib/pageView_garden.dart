import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:app_geral/myplants_Class.dart';

class pageView_garden extends  StatefulWidget {
  @override
  _pageView_garden createState() => _pageView_garden();
}

class _pageView_garden extends State<pageView_garden>{
 // var data = parseJosn(snapshot.data.toString());
  var mygarden_pageController = PageController(
    viewportFraction: 0.7,
    initialPage: 0,

  );


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  myPlants parseJosn(String response) {
   // if(response==null){
  //    return null;
   // }
    Map<String, dynamic> jsonMap = json.decode(response);

    myPlants temp = myPlants.fromJson(jsonMap);
    return temp;

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 800,
      child: Center(
        child:FutureBuilder(
        future:
        DefaultAssetBundle.of(context).loadString('assets/JSON/myplants.json'),
          builder: (context, snapshot) {
          var data = parseJosn(snapshot.data.toString());
          return myplants_List(context,data, mygarden_pageController);
          }
        )
              ),
    );
  }

}

Widget myplants_List(BuildContext context,myPlants plants, PageController controller ) {
  return PageView.builder(
    controller: controller,
    scrollDirection: Axis.horizontal,
    itemCount: plants == null ? 0: plants.plants_list.length,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onLongPress : (){},
        child:
        Column(
        children: [
          Align(
          alignment: Alignment.center,
          child:Image.network(plants.plants_list[index].image,
            width: 100,
            height: 200,
            fit: BoxFit.cover),
          ),
          Text(plants.plants_list[index].name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0, color: Colors.green),)
        ]
        )
      );
    },

  );

}