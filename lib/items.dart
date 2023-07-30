import 'package:flutter/material.dart';

class Item {
  Icon icon;
  Color color;
  String name;
  Item({required this.icon, required this.color, required this.name});
}

class ItemData {
  List<Item> itemListFirst = [];
  List<Item> itemListSecond = [];
  ItemData() {
    itemListFirst = [
      Item(
          icon: Icon(Icons.fastfood, color: Colors.red),
          name: 'Fastfood',
          color: Colors.red),
      Item(
          icon: Icon(Icons.menu_book, color: Colors.blue),
          name: 'Menu Book',
          color: Colors.blue),
      Item(
          icon: Icon(Icons.emoji_food_beverage, color: Colors.green),
          name: 'Emoji Food ',
          color: Colors.green),
      Item(
          icon: Icon(Icons.liquor, color: Colors.yellow),
          name: 'Liquor',
          color: Colors.yellow),
      Item(
          icon: Icon(Icons.cake, color: Colors.orange),
          name: 'Cake',
          color: Colors.orange),
      Item(
          icon: Icon(Icons.local_cafe, color: Colors.pink),
          name: 'Local Cafe',
          color: Colors.pink),
      Item(
          icon: Icon(Icons.restaurant, color: Colors.purple),
          name: 'Restaurant',
          color: Colors.purple),
      Item(
          icon: Icon(Icons.kitchen, color: Colors.teal),
          name: 'Kitchen',
          color: Colors.teal),
      Item(
          icon: Icon(Icons.food_bank, color: Colors.cyan),
          name: 'Food Bank',
          color: Colors.cyan),
      Item(
          icon: Icon(Icons.dinner_dining, color: Colors.lime),
          name: 'Dinner Dining',
          color: Colors.lime),
      Item(
          icon: Icon(Icons.lunch_dining, color: Colors.deepOrange),
          name: 'Lunch Dining',
          color: Colors.deepOrange),
      Item(
          icon: Icon(Icons.bakery_dining, color: Colors.blueGrey),
          name: 'Bakery Dining',
          color: Colors.blueGrey),
      Item(
          icon: Icon(Icons.nightlife, color: Colors.amber),
          name: 'Nightlife',
          color: Colors.amber),
      Item(
          icon: Icon(Icons.local_dining, color: Colors.indigo),
          name: 'Local Dining',
          color: Colors.indigo),
      Item(
          icon: Icon(Icons.takeout_dining, color: Colors.lightGreen),
          name: 'Takeout Dining',
          color: Colors.lightGreen),
      Item(
          icon: Icon(Icons.egg, color: Colors.pinkAccent),
          name: 'Egg',
          color: Colors.pinkAccent),
      Item(
          icon: Icon(Icons.icecream, color: Colors.orangeAccent),
          name: 'Icecream',
          color: Colors.orangeAccent),
      Item(
          icon: Icon(Icons.brunch_dining, color: Colors.grey),
          name: 'Brunch Dining',
          color: Colors.grey),
      Item(
          icon: Icon(Icons.rice_bowl, color: Colors.blue),
          name: 'Rice Bowl',
          color: Colors.blue),
      Item(
          icon: Icon(Icons.kebab_dining, color: Colors.yellow),
          name: 'Kebab Dining',
          color: Colors.yellow),
      Item(
          icon: Icon(Icons.no_meals, color: Colors.red),
          name: 'No Meals',
          color: Colors.red),
      Item(
          icon: Icon(Icons.no_drinks, color: Colors.teal),
          name: 'No Drinks',
          color: Colors.teal),
    ];
    itemListSecond = [
      Item(
          icon: Icon(Icons.fastfood, color: Colors.red),
          name: 'Fastfood',
          color: Colors.red),
      Item(
          icon: Icon(Icons.menu_book, color: Colors.blue),
          name: 'Menu Book',
          color: Colors.blue),
      Item(
          icon: Icon(Icons.emoji_food_beverage, color: Colors.green),
          name: 'Emoji Food ',
          color: Colors.green),
      Item(
          icon: Icon(Icons.liquor, color: Colors.yellow),
          name: 'Liquor',
          color: Colors.yellow),
      Item(
          icon: Icon(Icons.cake, color: Colors.orange),
          name: 'Cake',
          color: Colors.orange),
      Item(
          icon: Icon(Icons.local_cafe, color: Colors.pink),
          name: 'Local Cafe',
          color: Colors.pink),
      Item(
          icon: Icon(Icons.restaurant, color: Colors.purple),
          name: 'Restaurant',
          color: Colors.purple),
      Item(
          icon: Icon(Icons.kitchen, color: Colors.teal),
          name: 'Kitchen',
          color: Colors.teal),
      Item(
          icon: Icon(Icons.food_bank, color: Colors.cyan),
          name: 'Food Bank',
          color: Colors.cyan),
      Item(
          icon: Icon(Icons.dinner_dining, color: Colors.lime),
          name: 'Dinner Dining',
          color: Colors.lime),
      Item(
          icon: Icon(Icons.lunch_dining, color: Colors.deepOrange),
          name: 'Lunch Dining',
          color: Colors.deepOrange),
      Item(
          icon: Icon(Icons.bakery_dining, color: Colors.blueGrey),
          name: 'Bakery Dining',
          color: Colors.blueGrey),
      Item(
          icon: Icon(Icons.nightlife, color: Colors.amber),
          name: 'Nightlife',
          color: Colors.amber),
      Item(
          icon: Icon(Icons.local_dining, color: Colors.indigo),
          name: 'Local Dining',
          color: Colors.indigo),
      Item(
          icon: Icon(Icons.takeout_dining, color: Colors.lightGreen),
          name: 'Takeout Dining',
          color: Colors.lightGreen),
      Item(
          icon: Icon(Icons.egg, color: Colors.pinkAccent),
          name: 'Egg',
          color: Colors.pinkAccent),
      Item(
          icon: Icon(Icons.icecream, color: Colors.orangeAccent),
          name: 'Icecream',
          color: Colors.orangeAccent),
      Item(
          icon: Icon(Icons.brunch_dining, color: Colors.grey),
          name: 'Brunch Dining',
          color: Colors.grey),
      Item(
          icon: Icon(Icons.rice_bowl, color: Colors.blue),
          name: 'Rice Bowl',
          color: Colors.blue),
      Item(
          icon: Icon(Icons.kebab_dining, color: Colors.yellow),
          name: 'Kebab Dining',
          color: Colors.yellow),
      Item(
          icon: Icon(Icons.no_meals, color: Colors.red),
          name: 'No Meals',
          color: Colors.red),
      Item(
          icon: Icon(Icons.no_drinks, color: Colors.teal),
          name: 'No Drinks',
          color: Colors.teal),
    ].reversed.toList();
  }
}
