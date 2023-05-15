import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';

import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoritiesMeals;

  const FavoriteScreen(this.favoritiesMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (favoritiesMeals.isEmpty) {
      return const Center(
        child: Text('No Favorities Meals!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(favoritiesMeals[index]);
        },
        itemCount: favoritiesMeals.length,
      );
    }
  }
}
