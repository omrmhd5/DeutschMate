import 'package:deutschmate/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgPath;
  final Color color;
  const CustomCategoryCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imgPath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
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
                  Image.asset("assets/images/${imgPath}.png"),
                  Text(
                    title,
                    style: fontStyle(fontSize: 25, useDarkText: false),
                  ),
                  Text(
                    subtitle,
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
