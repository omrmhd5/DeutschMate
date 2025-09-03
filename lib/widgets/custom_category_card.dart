import 'package:deutschmate/models/category_model.dart';
import 'package:deutschmate/constants.dart';
import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CustomCategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () => category.navigate(),
          style: ElevatedButton.styleFrom(
            backgroundColor: category.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 110,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/${category.imgPath}.png",
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    category.title,
                    textAlign: TextAlign.center,
                    style: fontStyle(fontSize: 25, useDarkText: false),
                  ),
                  Text(
                    category.subtitle,
                    textAlign: TextAlign.center,
                    style: fontStyle(fontSize: 15, useDarkText: false),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
