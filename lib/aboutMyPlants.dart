import 'package:flutter/material.dart';
import 'package:app_geral/myplants_Class.dart';
import 'homePage.dart';
import 'dart:convert';

class aboutMyPlants extends StatelessWidget {
  plantsInfo plant;
  aboutMyPlants({required this.plant});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => homePage()),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Container(
          alignment: Alignment.topCenter,
         // margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all( color: Colors.black,   width: 2,),
              borderRadius: BorderRadius.circular(12),
          ),
          height: 600.0,
          width: 600,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5.0),
            child: Wrap(

            runSpacing: 2.0,
            children: <Widget> [
              Text(plant.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0, color: Colors.black),),
              Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Image.network(
                 plant.image,
                  fit: BoxFit.fill,
                  height: 150, // set your height
                  width: 120, // and width here
                )),
              Text(plant.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10.0, color: Colors.black),),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 400.0,
                height: 50.0,
                child: Material(
                  color: Colors.white,
                  child: MaterialButton(

                    minWidth: 200.0,
                    padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homePage()),
                      );
                    },
                    child: const Text("Voltar a Página Inicial",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ])
          ),
        )
      )
    );
  }

}