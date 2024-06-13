import 'package:flutter/material.dart';

class ShoppingListPage extends StatelessWidget {
  final List<String> ingredients = [
    'Eggs',
    'Milk',
    'Bread',
    'Chicken',
    'Tomatoes',
    'Lettuce',
    'Cheese'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.green),
              title: Text(ingredients[index],
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}
