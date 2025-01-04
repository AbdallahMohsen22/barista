import 'package:flutter/material.dart';

import './module/category.dart';
import './module/barista.dart';

const DUMMY_FOOD = const [
  Category(
    id: 'c1',
    title: 'Pizza',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Hamburger',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Kebda',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Kofta',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Meat',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Spaggeti',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Batatis',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Sgu',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Mahshy',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Checken',
    color: Colors.teal,
  ),
  Category(
    id: 'c11',
    title: 'Gambary',
    color: Colors.amber,
  ),
];

const DUMMY_Steps = const [
  Barista(
    id: 'm1',
    categories: [
      'c1',

    ],
    title: '   Pizza',
    affordabillity: Affordabillity.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://mediaaws.almasryalyoum.com/news/large/2014/05/28/216500_0.jpg',
    duration: 10,
    ingredients: [
      '4 كوب من الدقيق الأبيض.',
      'بالإضافة إلى نصف كوب من الزيت.',
      'وأيضا ملعقة ونصف من الخميرة.',
      'بالإضافة إلى نصف ملعقة سكر.',
      'وكذلك رشة من الملح.',
      'مع كوب ونصف من الماء الدافئ.',
      'وأيضا 2 ملعقة من اللبن.',

    ],
    steps: [
      ' نقوم بوضع مقادير عجينة البيتزا والمكونة من السكر، والملح، والدقيق، والخميرة في وعاء العجن، ونخلط المواد بهدوء.',
      'نضيف الزيت، والزبادي، ونعجن عجينة البيتزا على سرعة متوسطة لمدة دقيقتين، ثم إضافة الماء وعجنه إلى أن تتكون عجينة البيتزا ناعمة وملساء، يتم اضافة الكمية المتبقية من الطحين إذا كانت العجينة لينة.',
      ' يتم وضع العجينة في طبق مدهون بالزيت، وتغطية العجينة بقطعة من النايلون ووضعها في مكان دافئ إلى أن تختمر ويتضاعف حجمها.',
      'تغطية عجينة البيتزا بقطعة من النايلون، وتركها في مكان دافئ حتى يتضاعف حجمها، ثم الضغط عليها بأطراف أصابع اليد،',
      ' إحضار صينية قصيرة الحافة ودهنها بكمية وفيرة من الزيت، ومن ثم وضع العجينة في الصينية وفردها بأطراف أصابع اليد بحيث يتم تغطية قاع الصينية.',
      ' يتم توزيع كلٍ من السماق، والزيت، والزعتر.',
      ' تسخين الفرن إلى درجة حرارة 180 درجة مئوية، ووضع البيتزا في الرف الاوسط من الفرن.',
      'خبز عجينة البيتزا لمدة عشرين دقيقة في الفرن، ومن ثم تقديمها.',
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
    title: 'Hamburger',
    affordabillity: Affordabillity.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn-rdb.arla.com/kraft-ar/kraft-x-hassans-juicy-beef-burger-special-edition/3722663180.jpg?w=1230&h=670&mode=crop&ak=617569bf&hm=a5ba9a24',
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
    title: 'Kebda',
    affordabillity: Affordabillity.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
    'https://static.aljamila.com/styles/1100x732/public/shutterstock_422091010.jpg?h=50844e28',
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
    title: 'Kofta',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://www.tastingtable.com/img/gallery/spiced-beef-kofta-recipe/intro-1689799891.webp',
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
    title: 'Meat',
    affordabillity: Affordabillity.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
      'https://www.safefood.net/getmedia/94101697-3c3f-4fe1-8ae8-5b595d3814ba/medium-rare-steak.jpg?w=2000&h=1333&ext=.jpg&width=1360&resizemode=force',
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
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
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
    title: 'Watermelon Juice',
    affordabillity: Affordabillity.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://www.thespruceeats.com/thmb/btkemOkvdGKQLPy2YAvRbDfH4HQ=/3000x2000/filters:fill(auto,1)/watermelon-juice-recipe-to-burn-fat-2078407-hero-03-5754d230d6304eed951d94968c6173b8.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Barista(
    id: 'm10',
    categories: [
      'c10',
    ],
    title: 'strawberry Juice',
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
    id: 'm11',
    categories: [
      'c11',
    ],
    title: 'Smoothy Mango',
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
];
