import 'package:barista/widget/drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static const routName = 'FilterScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
      ),
      body: Center(child: Text("Filters!")
      ),
      drawer: MainDrawer(),
    );
  }
}
