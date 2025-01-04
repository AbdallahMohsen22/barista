import 'package:barista/module/barista.dart';
import 'package:barista/widget/drink.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {

  final List<Barista> favorites;

   FavoritesScreen( this.favorites) ;


  @override
  Widget build(BuildContext context) {

    if(favorites.isEmpty) {
      return Center(
        child: Text("You have no Favorites yet - Start adding some!"),
      );
    }
    else {
     return ListView.builder(
       itemBuilder: (ctx, index) {
         return Drink(
             id: favorites[index].id,
             imageUrl: favorites[index].imageUrl,
             title: favorites[index].title,
             duration: favorites[index].duration,
             complexity: favorites[index].complexity,
             affordabillity: favorites[index].affordabillity);
       },
       itemCount: favorites.length,
     );
    }
  }
}
