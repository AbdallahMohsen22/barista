import 'dart:ui';

import 'package:barista/screen/drinks_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  Widget buildListTile(String title, IconData icon,Function tapHandler ){
    return ListTile(
      leading: Icon(icon,size: 25),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 24,
            fontFamily: 'Roboto Condensed',
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );

  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            child: Text(
              "Setting",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 20),
          buildListTile("Drinks", Icons.local_drink_outlined,(){Navigator.of(context).pushNamed('DrinkScreen');} ),
          buildListTile("Foods", Icons.restaurant,(){Navigator.of(context).pushNamed("FoodScreen");} ),
          buildListTile("Filters", Icons.settings,(){Navigator.of(context).pushNamed("FilterScreen");}),
        ],
      ),
    );
  }
}
