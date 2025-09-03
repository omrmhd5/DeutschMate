// import 'package:deutschmate/utils/constants.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String subtitle;
  final String imgPath;
  final Color color;
  final Widget destination;

  CategoryModel({
    required this.title,
    required this.subtitle,
    required this.imgPath,
    required this.color,
    required this.destination,
  });

  void navigate() {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => destination),
    // );
  }
}
