import 'package:deutschmate/constants.dart';
import 'package:deutschmate/screens/animals_screen.dart';
import 'package:deutschmate/screens/colors_screen.dart';
import 'package:deutschmate/screens/family_screen.dart';
import 'package:deutschmate/screens/foodrinks_screen.dart';
import 'package:deutschmate/screens/numbers_screen.dart';
import 'package:flutter/material.dart';

final featured = [
  {
    "title": "Animals",
    "subtitle": "13 Words • Medium",
    "imgPath": "app_icons/animals",
    "color": secondaryColor,
    "destination": AnimalsScreen(),
  },
  {
    "title": "Colors",
    "subtitle": "7 Words • Easy",
    "imgPath": "app_icons/colors",
    "color": Color(0xFF06D6A0),
    "destination": ColorsScreen(),
  },
  {
    "title": "Family",
    "subtitle": "6 Words • Easy",
    "imgPath": "app_icons/family",
    "color": Color(0xFFFFD166),
    "destination": FamilyScreen(),
  },
];

final continued = [
  {
    "title": "Food",
    "subtitle": "14 Words • Hard",
    "imgPath": "app_icons/foodrinks",
    "color": Color(0xFFD90368),
    "destination": FoodDrinksScreen(),
  },
  {
    "title": "Numbers",
    "subtitle": "10 Words • Medium",
    "imgPath": "app_icons/colors",
    "color": Color(0xFFFD6E0A),
    "destination": NumbersScreen(),
  },
  {
    "title": "Family",
    "subtitle": "6 Words • Easy",
    "imgPath": "app_icons/family",
    "color": Color(0xFFFFD166),
    "destination": FamilyScreen(),
  },
];
