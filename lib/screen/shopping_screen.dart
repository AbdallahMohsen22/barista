import 'package:barista/module/barista.dart';
import 'package:barista/widget/drink.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class ShoppingScreen extends StatelessWidget {
  static const routName = 'ShoppingScreen';

  final List<Barista> shopping;

  ShoppingScreen( this.shopping) ;


  @override
  Widget build(BuildContext context) {

    if(shopping.isEmpty) {
      return Center(
        child: Text("You have no Shopping yet - Start adding some!"),
      );
    }
    else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return Drink(
              id: shopping[index].id,
              imageUrl: shopping[index].imageUrl,
              title: shopping[index].title,
              duration: shopping[index].duration,
              complexity: shopping[index].complexity,
              affordabillity: shopping[index].affordabillity);
        },
        itemCount: shopping.length,
      );
    }
  }
}
