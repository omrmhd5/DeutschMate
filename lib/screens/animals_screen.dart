import 'package:deutschmate/constants.dart';
import 'package:flutter/material.dart';

class AnimalsScreen extends StatelessWidget {
  const AnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 30, color: iconColor),
        ),
        centerTitle: true,
        title: Text(
          "Animals Screen",
          style: fontStyle(fontSize: 25, useDarkText: false),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.7),
            borderRadius: BorderRadius.circular(15),
          ),

          child: ListTile(
            leading: Image.asset("assets/images/animals/cat.png"),
            title: Text(
              "Cat",
              style: fontStyle(fontSize: 23, useDarkText: false),
            ),
            subtitle: Text(
              "Katze",
              style: fontStyle(
                fontSize: 19,
                customColor: Colors.grey[300],
                useDarkText: false,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow, size: 40, color: iconColor),
            ),
          ),
        ),
      ),
    );
  }
}
