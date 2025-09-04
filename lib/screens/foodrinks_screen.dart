import 'package:deutschmate/data/food_drinks_data.dart';
import 'package:deutschmate/models/screen_model.dart';
import 'package:deutschmate/screens/layout_screen.dart';
import 'package:flutter/material.dart';

class FoodDrinksScreen extends StatelessWidget {
  const FoodDrinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      screenModel: ScreenModel(
        screenName: "Food & Drinks",
        screenImg: "foodrinks",
        translations: foodrinks,
      ),
    );
  }
}
