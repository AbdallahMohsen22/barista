import "package:flutter/material.dart";
import './module/category.dart';
import './module/barista.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Latte',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Turkish coffee',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Ice Moka',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c4',
    title: 'Hot Chocolate',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Cappuccino',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Espresso',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Mango Juice',
    color: Colors.orange,
  ),
  Category(
    id: 'c8',
    title: 'Orange Juice',
    color: Colors.yellow,
  ),
  Category(
    id: 'c9',
    title: 'Mint Orange Juice',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c10',
    title: 'Watermelon Juice',
    color: Colors.pink,
  ),
  Category(
    id: 'c11',
    title: 'Strawberry Juice',
    color: Colors.red,
  ),
  Category(
    id: 'c12',
    title: 'Banana Juice',
    color: Colors.amber,
  ),
  Category(
    id: 'c13',
    title: 'Lemon juice',
    color: Colors.lightGreenAccent,
  ),
  Category(
    id: 'c14',
    title: 'Mint Lemon juice',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c15',
    title: 'Apple Juice',
    color: Colors.red,
  ),
  Category(
    id: 'c16',
    title: 'Guava Juice',
    color: Colors.greenAccent,
  ),
  Category(
    id: 'c17',
    title: 'Avocado Juice',
    color: Colors.teal,
  ),
  Category(
    id: 'c18',
    title: 'Mix Mango Strawberry Banana',
    color: Colors.amber,
  ),
  Category(
    id: 'c19',
    title: 'Mix Avocado Mango',
    color: Colors.orange,
  ),
  Category(
    id: 'c20',
    title: 'Mix Avocado Kiwi',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c21',
    title: 'Mix Orange Mango',
    color: Colors.amber,
  ),
  Category(
    id: 'c22',
    title: 'Oreo Milkshake',
    color: Colors.deepPurpleAccent,
  ),
  Category(
    id: 'c23',
    title: 'Vanilla Milkshake',
    color: Colors.white70,
  ),
  Category(
    id: 'c24',
    title: 'Chocolate Milkshake',
    color: Colors.black12,
  ),
  Category(
    id: 'c25',
    title: 'Caramel Banana Milkshake',
    color: Colors.orangeAccent,
  ),
  Category(
    id: 'c26',
    title: 'Strawberry Milkshake',
    color: Colors.pink,
  ),
  Category(
    id: 'c27',
    title: 'Mango Milkshake',
    color: Colors.orange,
  ),
  Category(
    id: 'c28',
    title: 'Blueberry Milkshake',
    color: Colors.purple,
  ),
  Category(
    id: 'c29',
    title: 'Kit Kat Milkshake',
    color: Colors.indigoAccent,
  ),
  Category(
    id: 'c30',
    title: 'Maltesers Milkshake',
    color: Colors.indigo,
  ),
  Category(
    id: 'c31',
    title: 'Cookies Milkshake',
    color: Colors.purpleAccent,
  ),
  Category(
    id: 'c32',
    title: 'Snickers Milkshake',
    color: Colors.grey,
  ),
  Category(
    id: 'c33',
    title: 'Galaxy MilkShake',
    color: Colors.greenAccent,
  ),
  Category(
    id: 'c34',
    title: 'Mango ٍSmoothy',
    color: Colors.amber,
  ),
  Category(
    id: 'c35',
    title: 'Strawberry ٍSmoothy',
    color: Colors.red,
  ),
  Category(
    id: 'c36',
    title: 'Blueberry ٍSmoothy',
    color: Colors.purple,
  ),
  Category(
    id: 'c37',
    title: 'Kiwi ٍSmoothy',
    color: Colors.teal,
  ),
  Category(
    id: 'c38',
    title: 'Lemon ٍSmoothy',
    color: Colors.tealAccent,
  ),
  Category(
    id: 'c39',
    title: 'Mint Lemon Smoothy',
    color: Colors.green
    ,
  ),



];

const DUMMY_STEPS = const [
  Barista(
    id: 'm1',
    categories: [
      'c1',

    ],
    title: '   LATTE',
    affordabillity: Affordabillity.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.caffesociety.co.uk/assets/recipe-images/latte-small.jpg',
    duration: 10,
    ingredients: [
      'Double shot of espresso',
      '150ml to 250ml steamed milk.',
      'A thin layer of foam about 1 cm. To increase the smooth',
      'consistency in the latte, add more milk.',

    ],
    steps: [
      'Heat the coffee with water in a pot on the stove.',
      'Heat the milk or cream in another bowl. Pour into serving cups equal amounts of coffee and milk.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Turkish Coffee',
    affordabillity: Affordabillity.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ibb.co/R41SJPS/special-turkish-coffee-set-contains-6-d524.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Barista(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'Ice Mocha',
    affordabillity: Affordabillity.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://thishealthykitchen.com/wp-content/uploads/2019/06/Healthy-Iced-Chocolate-Feat-Image-Square-1200x1200-1.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Hot Chocolate',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://saurd.com/wp-content/uploads/2020/12/19739-rich-n-creamy-hot-chocolate-600x600-1.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Barista(
    id: 'm5',
    categories: [
      'c5',
    ],
    title: 'Cappuccino',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/cappuccino-2029-e80b7c6d318c7862df2c4c8623a11f99@1x.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm6',
    categories: [
      'c6',
    ],
    title: 'Espresso',
    affordabillity: Affordabillity.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://i2-prod.mirror.co.uk/incoming/article17203196.ece/ALTERNATES/s615/3_Tiny-glass-cup-of-espresso-coffee.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Barista(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Mango Juice',
    affordabillity: Affordabillity.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://d2j6dbq0eux0bg.cloudfront.net/images/13995032/1383656817.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Barista(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Orange Juice',
    affordabillity: Affordabillity.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROIf9HJb6o2LbiQOkpLZ9LKM0C1LGAuHagTA&usqp=CAU',
    duration: 35,
    ingredients: [
      '',
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Mint Orange Juice',
    affordabillity: Affordabillity.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://img-global.cpcdn.com/recipes/36fadb27b9272415/1200x630cq70/photo.jpg',
    duration: 35,
    ingredients: [
      '',
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm10',
    categories: [
      'c10',
    ],
    title: 'Watermelon Juice',
    affordabillity: Affordabillity.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.thespruceeats.com/thmb/btkemOkvdGKQLPy2YAvRbDfH4HQ=/3000x2000/filters:fill(auto,1)/watermelon-juice-recipe-to-burn-fat-2078407-hero-03-5754d230d6304eed951d94968c6173b8.jpg',
    duration: 45,
    ingredients: [
      '',
    ],
    steps: [
      '',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Barista(
    id: 'm11',
    categories: [
      'c11',
    ],
    title: 'Strawberry Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://media.istockphoto.com/photos/some-glasses-with-strawberry-liqueur-picture-id178416773?k=20&m=178416773&s=612x612&w=0&h=7C1l6H57l7k71u5XASp9rr0QB_nYAaZ-YFAaMA65UtE=',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm12',
    categories: [
      'c12',
    ],
    title: 'Banana Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://st2.depositphotos.com/3300107/8440/i/950/depositphotos_84404380-stock-photo-banana-juice.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm13',
    categories: [
      'c13',
    ],
    title: 'Lemon Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://homepuff.com/wp-content/uploads/2019/04/lemon-juice.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm14',
    categories: [
      'c14',
    ],
    title: 'Mint Lemon Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://rakskitchen.net/wp-content/uploads/2018/04/lemon-mint-juice-recipe.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm15',
    categories: [
      'c15',
    ],
    title: 'Apple Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://www.waters.com/nextgen/it/it/library/application-notes/2008/rapid-determination-patulin-apple-juice/_jcr_content/root/layoutcontainer_1842990709/image.coreimg.82.1024.jpeg/1616442267964/stock-apple-juice-with-apples.jpeg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm16',
    categories: [
      'c16',
    ],
    title: 'Guava Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://5.imimg.com/data5/WH/PI/MY-24215181/1-500x500.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm17',
    categories: [
      'c17',
    ],
    title: 'Avocado Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://www.organicfacts.net/wp-content/uploads/avocadosmoothieone.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm18',
    categories: [
      'c18',
    ],
    title: 'Mix Mango Strawberry Banana Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://www.ruchiskitchen.com/wp-content/uploads/2018/06/strawberry-mango-daiquiri-13.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm19',
    categories: [
      'c19',
    ],
    title: 'Mix Avocado Mango',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://recipethis.com/wp-content/uploads/Avocado-Mango-Smoothie-For-Babies.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm20',
    categories: [
      'c20',
    ],
    title: 'Mix Avocado Kiwi Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://www.simplymaderecipes.com/wp-content/uploads/2019/04/Avocado-Kiwi-Smoothie-main.png',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm21',
    categories: [
      'c21',
    ],
    title: 'Mix Orange Mango Juice',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.healthyrecipes101.com/wp-content/uploads/2021/03/Homemade-orange-mango-juice-recipe.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm22',
    categories: [
      'c22',
    ],
    title: 'Oreo Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://tastesbetterfromscratch.com/wp-content/uploads/2020/03/Oreo-Milkshake-10-500x500.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm23',
    categories: [
      'c23',
    ],
    title: 'Vanilla Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2021/02/03/BobbyFlay_BasicVanillaMilkshake_H.jpg.rend.hgtvcom.616.462.suffix/1612401890664.jpeg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm24',
    categories: [
      'c24',
    ],
    title: 'Chocolate Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://www.kimscravings.com/wp-content/uploads/2021/06/008.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm25',
    categories: [
      'c25',
    ],
    title: 'Caramel Banana Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://d36rz30b5p7lsd.cloudfront.net/foodserviceca/recipes/en-ca/img/583280_2_1_foodservice-3c5806ae8c9e2da2a31d979b7bba38314dfb610d_642x428.jpeg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm26',
    categories: [
      'c26',
    ],
    title: 'Strawberry Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://marleysmenu.com/wp-content/uploads/2021/05/Banana-Strawberry-Milkshake-Featured-Image.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm27',
    categories: [
      'c27',
    ],
    title: 'Mango Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://veggiedesserts.com/wp-content/uploads/2021/03/mango-shake-5sq-500x500.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm28',
    categories: [
      'c28',
    ],
    title: 'Blueberry Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.pinimg.com/originals/38/2d/76/382d762a1f4a001b5d07571b32a27c66.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm29',
    categories: [
      'c29',
    ],
    title: 'Kit Kat Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://img-global.cpcdn.com/recipes/1969ce6138198200/400x400cq70/photo.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm30',
    categories: [
      'c30',
    ],
    title: 'Maltesers Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.ytimg.com/vi/o-DfEbzMfpc/maxresdefault.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm31',
    categories: [
      'c31',
    ],
    title: 'Cookies Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://goodthingsbaking.com/wp-content/uploads/2019/08/Cookies-and-Milk-Milkshake-3.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm32',
    categories: [
      'c32',
    ],
    title: 'Snickers Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://images.squarespace-cdn.com/content/v1/5dd1b6c54ce8ce5359159571/1621360466991-XGT1K9LOCZ53BC1S5VDY/IMG_9632.jpg?format=1000w',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm33',
    categories: [
      'c33',
    ],
    title: 'Galaxy Milkshake',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://pbs.twimg.com/media/DgMck68UYAAwRHs.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm34',
    categories: [
      'c34',
    ],
    title: 'Mango Smoothy',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://therecipecritic.com/wp-content/uploads/2021/06/mangosmoothie-500x500.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm35',
    categories: [
      'c35',
    ],
    title: 'Strawberry Smoothy',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i2.wp.com/nourish-and-fete.com/wp-content/uploads/2020/05/strawberry-pomegranate-smoothie-2.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm36',
    categories: [
      'c36',
    ],
    title: 'Blueberry Smoothy',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/03/Blueberry-Smoothie-8.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm37',
    categories: [
      'c37',
    ],
    title: 'Kiwi Smoothy',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i2.wp.com/healthy-recipes-idea.com/wp-content/uploads/2021/02/Kiwi-Smoothie.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm38',
    categories: [
      'c38',
    ],
    title: 'Lemon Smoothy',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i2.wp.com/foxeslovelemons.com/wp-content/uploads/2016/02/Sunshine-in-a-Bottle-Lemon-Smoothie-1.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Barista(
    id: 'm39',
    categories: [
      'c39',
    ],
    title: 'Mint Lemon Smoothy',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.pinimg.com/originals/d2/5d/e7/d25de76c0a035ef6eb3785411a905986.jpg',
    duration: 30,
    ingredients: [
      ''
    ],
    steps: [
      ''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),



];
