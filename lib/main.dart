import 'dart:ui';
import 'package:barista/dummy_data.dart';
import 'package:barista/module/barista.dart';
import 'package:barista/screen/drinks_screen.dart';
import 'package:barista/screen/food_screen.dart';
import 'package:barista/screen/content_home.dart';
import 'package:barista/screen/filter_screen.dart';
import 'package:barista/screen/food_content.dart';
import 'package:barista/screen/food_details.dart';
import 'package:barista/screen/home.dart';
import 'package:barista/widget/select_food_item.dart';
import './screen/drink_details.dart';
import 'package:flutter/material.dart';


import 'screen/drink_content.dart';
void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Barista> _favorites=[];
  List<Barista> _shopping=[];

  void _toggleFavorites(String itemId ){
    final existingIndex = _favorites.indexWhere((item) => item.id==itemId );

    if(existingIndex>=0){
      setState((){
        _favorites.removeAt(existingIndex);

      });
    }
    else {
      setState(() {
        _favorites.add(DUMMY_STEPS.firstWhere((item) => item.id==itemId));
      });
    }
  }
  void _toggleShopping(String itemId ){
    final existingIndex = _shopping.indexWhere((item) => item.id==itemId );

    if(existingIndex>=0){
      setState((){
        _shopping.removeAt(existingIndex);

      });
    }
    else {
      setState(() {
        _shopping.add(DUMMY_STEPS.firstWhere((item) => item.id==itemId));
      });
    }
  }

  bool _isFavorites(String id){
    return _favorites.any((item) => item.id==id);

  }
  bool _isShopping(String id){
    return _shopping.any((item) => item.id==id);

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barista',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(248, 245, 172, 1.0),
          textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 50, 50, 1),
            ),
            bodyText2: TextStyle(
                color: Color.fromRGBO(20, 50, 50, 1)
            ),
            subtitle1: TextStyle(
              fontSize: 24,
              fontFamily: 'Roboto Condensed',
              fontWeight: FontWeight.bold,
            ),
          )
      ),
      // home: CatergoriesScreen(),
      routes: {
        '/':(context) => Home(favorites: _favorites,shopping: _shopping,), //الصفحة الرئيسية

        DrinkContent.routName: (context) => DrinkContent(),
        DrinkDetails.routName: (context) => DrinkDetails(_toggleFavorites,_isFavorites,_toggleShopping,_isShopping),

        FoodContent.routName:(context) =>FoodContent(),
        FoodDetails.routName: (context) => FoodDetails(_toggleFavorites,_isFavorites,_toggleShopping,_isShopping),


        DrinkScreen.routName: (context) => DrinkScreen(),
        FoodScreen.routName: (context) => FoodScreen(),
        FilterScreen.routName: (context) => FilterScreen(),

      },
    );
  }

}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Barista'),
      ),
      body: null,
    );


  }
}
