import 'package:flutter/material.dart';
import 'dart:async';

//class pageView_plants extends StatefulWidget {
 // @override
//  _pageView_plants createState() => _pageView_plants();
//}

class pageView_plants extends StatelessWidget {
  int _currentPage = 0;
  var controller = PageController(
    viewportFraction: 1 ,
    initialPage: 0,
  );

  @override
  void initState() {

    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 200.0,
      width: 500,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                image: new DecorationImage(
                  //color: Color(0xffb714365),
                  image: new ExactAssetImage('images/plants3.jpg'),
                  fit: BoxFit.cover,
                ),

                borderRadius: BorderRadius.circular(12),
              ),

            ),

          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              image: new DecorationImage(
                //color: Color(0xffb714365),
                image: new ExactAssetImage('images/plants1.jpeg'),
                fit: BoxFit.cover,
              ),

              borderRadius: BorderRadius.circular(12),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              image: new DecorationImage(
                //color: Color(0xffb714365),
                image: new ExactAssetImage('images/plants2.jpg'),
                fit: BoxFit.cover,
              ),

              borderRadius: BorderRadius.circular(12),
            ),


          ),







        ],
      ),
    );
  }



}