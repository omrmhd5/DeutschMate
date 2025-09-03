import 'package:deutschmate/screens/home_categories_screen.dart';
import 'package:deutschmate/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
              child: CircleAvatar(),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Hello, User!",
                    style: fontStyle(fontSize: 25, useDarkText: false),
                  ),
                  SizedBox(width: 10),
                  Image.asset("assets/images/app_icons/germany.png", width: 50),
                ],
              ),
            ),
            backgroundColor: primaryColor,
            actions: [
              Icon(
                Icons.notifications_active_outlined,
                color: iconColor,
                size: 30,
              ),
            ],
          ),
        ),
        body: HomeCategoriesScreen(),
      ),
    );
  }
}
