import 'package:deutschmate/utils/constants.dart';
import 'package:deutschmate/data/categories_data.dart';
import 'package:deutschmate/models/category_model.dart';
import 'package:deutschmate/widgets/custom_category_widget.dart';
import 'package:deutschmate/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class HomeCategoriesScreen extends StatelessWidget {
  const HomeCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: primaryColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 7),
          child: CircleAvatar(
            radius: 200,
            child: Image.asset("assets/images/user.png"),
          ),
        ),
        title: Row(
          children: [
            Text(
              "Hello, User!",
              style: fontStyle(fontSize: 25, useDarkText: false),
            ),
            SizedBox(width: 10),
            Image.asset("assets/images/app_icons/germany.png", width: 45),
          ],
        ),
        actions: [
          Icon(Icons.notifications_active_outlined, color: iconColor, size: 30),
        ],
      ),
      body: SingleChildScrollView(
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
                    return CustomCategoryWidget(
                      category: CategoryModel(
                        title: category["title"].toString(),
                        subtitle: category["subtitle"]!.toString(),
                        imgPath: category["imgPath"]!.toString(),
                        color: category["color"] as Color,
                        destination: category["destination"] as Widget,
                      ),
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
                return CustomCategoryWidget(
                  category: CategoryModel(
                    title: category["title"].toString(),
                    subtitle: category["subtitle"]!.toString(),
                    imgPath: category["imgPath"]!.toString(),
                    color: category["color"] as Color,
                    destination: category["destination"] as Widget,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
