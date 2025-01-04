import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard
}
enum Affordabillity {
  Affordable,
  Pricey,
  Luxurious
}

class Barista {
  final String id;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordabillity affordabillity;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Barista({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.affordabillity,
    @required this.complexity,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.steps
  });
}
