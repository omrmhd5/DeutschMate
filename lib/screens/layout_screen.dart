import 'package:deutschmate/constants.dart';
import 'package:deutschmate/data/animals_data.dart';
import 'package:deutschmate/models/screen_model.dart';
import 'package:deutschmate/models/translation_model.dart';
import 'package:deutschmate/widgets/custom_translation_widget.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  final ScreenModel screenModel;
  const LayoutScreen({super.key, required this.screenModel});

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
                screenModel.screenName,
                style: fontStyle(fontSize: 25, useDarkText: false),
              ),
              Image.asset(
                "assets/images/app_icons/${screenModel.screenImg}.png",
                width: 60,
              ),
            ],
          ),
        ),
        actions: [SizedBox(width: 33)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: screenModel.translations.length,
          itemBuilder: (context, index) {
            final item = animals[index];
            return CustomTranslationWidget(
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
