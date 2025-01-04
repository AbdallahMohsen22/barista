import 'package:badges/badges.dart';
import 'package:barista/module/barista.dart';
import 'package:barista/screen/content_home.dart';
import 'package:barista/screen/shopping_screen.dart';
import 'package:barista/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'favorites_screen.dart';

class Home extends StatefulWidget {

  final List<Barista> favorites;
  final List<Barista> shopping;
  final itemNumber=0;
  const Home({Key key, this.favorites,this.shopping}) ;




  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counter=0;
  int _selectedPageIndex = 0;
  List<Map<String, Object>> _pages;


  void _selectPage(int value) {
    setState(() {
      _selectedPageIndex = value;
    });
  }
  void _selectItem(int value) {
    setState(() {
      counter = value;
    });
  }
  @override
  void initState() {
    _pages = [
      {'page': Content_Home(),
        'title': 'Home',

      },
      {'page': FavoritesScreen(widget.favorites),
        'title': 'Your Favorites',
      },

      {'page': ShoppingScreen(widget.shopping),
        'title': 'Your Shopping',
      },

    ];
  }

  // void selectShopping(BuildContext ctx) {
  //   Navigator.of(ctx).pushNamed(ShoppingScreen.routName,
  //
  //
  //   );
  // }

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text(_pages[_selectedPageIndex]['title']),
        // actions: [
        //   IconButton(
        //       icon: Icon(Icons.shopping_cart_outlined),
        //       onPressed: ()
        //       {
        //
        //       },
        //   ),
        // ],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedPageIndex,
          items:
          [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text("Favorites"),
            ),

            BottomNavigationBarItem(
              //icon: Icon(Icons.shopping_cart_outlined),
              title: Text("Shopping"),
              // label: 'Shopping',
              icon:  Badge(
                badgeContent: Text('$counter'),
                child: Icon(Icons.shopping_cart_outlined),
                badgeColor: Colors.white,
                position: BadgePosition.topEnd(top: -10),
                shape: BadgeShape.circle,
                borderRadius: BorderRadius.circular(5),
                padding: EdgeInsets.all(5),
                animationType: BadgeAnimationType.scale,
              ),
            ),

          ]
      ),
      drawer: MainDrawer(),
    );
  }
}
