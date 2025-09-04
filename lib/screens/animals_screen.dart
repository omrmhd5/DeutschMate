import 'package:deutschmate/constants.dart';
import 'package:deutschmate/data/animals_data.dart';
import 'package:deutschmate/models/translation_model.dart';
import 'package:deutschmate/widgets/custom_translation_card.dart';
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
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Animals Screen",
                style: fontStyle(fontSize: 25, useDarkText: false),
              ),
              Image.asset("assets/images/app_icons/animals.png", width: 60),
            ],
          ),
        ),
        actions: [SizedBox(width: 33)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) {
            final item = animals[index];
            return CustomTranslationCard(
              translation: TranslationModel(
                imgPath: item["imgPath"]!,
                englishText: item["englishText"]!,
                germanText: item["germanText"]!,
                soundPath: item["soundPath"]!,
              ),
            );
          },
        ),
      ),
    );
  }
}
