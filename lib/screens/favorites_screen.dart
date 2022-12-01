import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeald;

  FavoritesScreen(this.favoriteMeald);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeald.isEmpty) {
      return Center(
        child: Text('The Favorites'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeald[index].id,
            title: favoriteMeald[index].title,
            imageUrl: favoriteMeald[index].imageUrl,
            duration: favoriteMeald[index].duration,
            affordability: favoriteMeald[index].affordability,
            complexity: favoriteMeald[index].complexity,
          );
        },
        itemCount: favoriteMeald.length,
      );
    }
  }
}
