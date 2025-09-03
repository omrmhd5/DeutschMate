import 'package:deutschmate/models/categories_models.dart';
import 'package:deutschmate/widgets/custom_category_card.dart';
import 'package:deutschmate/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class HomeCategoriesScreen extends StatelessWidget {
  const HomeCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTitle(title: "Featured Lessons"),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: featured.length,
                itemBuilder: (context, index) {
                  final category = featured[index];
                  return CustomCategoryCard(
                    title: category["title"].toString(),
                    subtitle: category["subtitle"]!.toString(),
                    imgPath: category["imgPath"]!.toString(),
                    color: category["color"] as Color,
                  );
                },
              ),
            ),
          ),
          CustomTitle(title: "Continue Learning"),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
            ),
            itemCount: continued.length,
            itemBuilder: (context, index) {
              final category = continued[index];
              return CustomCategoryCard(
                title: category["title"].toString(),
                subtitle: category["subtitle"]!.toString(),
                imgPath: category["imgPath"]!.toString(),
                color: category["color"] as Color,
              );
            },
          ),
        ],
      ),
    );
  }
}
