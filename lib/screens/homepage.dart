import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:children/children.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



class HomePage extends StatefulWidget{
 
  @override 
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{

  GlobalKey _bottomNavigationKey = GlobalKey();
  @override 
  Widget build (BuildContext context) {
    return Scaffold(
      body: 
        Container(color: Colors.blueAccent,
            child: Stack(
            children: <Widget>[ SafeArea(
              
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SearchBar(onSearch: null, onItemFound: null, searchBarStyle: SearchBarStyle(
        backgroundColor: Colors.white54, borderRadius: BorderRadius.circular(30), 
                ),),
              ),
            ),
                 Positioned(child: Text('Featured Jobs', style: TextStyle(fontFamily: 'Bebas', color: Colors.white, fontSize: 30),),
                 left: 35.0,
                 top: 120,),
       
      Center(
          child: Swiper(
  itemBuilder: (BuildContext context, int index) {
    return new Container(
          decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.pinkAccent]),
                borderRadius: BorderRadius.circular(25),
          
          ),
          child: Stack(children:<Widget>[ Positioned( 
              left: 25,
              top: 25,
              child: Text("Mobile App Developer", 
          style: TextStyle(fontFamily: 'Bebas',
           color: Colors.white, fontSize: 30),),)]

           ),
    );
  },
  itemCount: 10,
  itemWidth: MediaQuery.of(context).size.width*0.9,
  itemHeight: MediaQuery.of(context).size.height*0.4,
  layout: SwiperLayout.STACK,
),
      ), 

      Positioned(child: Text('Companies', style: TextStyle(fontFamily: 'Bebas', color: Colors.white, fontSize: 30),),
                 left: 35.0,
                 top: 470,),
 

],),
          ),
    bottomNavigationBar: CurvedNavigationBar(
      buttonBackgroundColor: Colors.white30,
      key: _bottomNavigationKey,
      color: Colors.white54,
    backgroundColor: Colors.blueAccent,
    items: <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.add, size: 30),
      Icon(Icons.people, size: 30),
    ],
    onTap: (index) {
      setState(() {
              
            });
    },
  ),
                 
    );
  }
}
