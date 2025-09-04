import 'package:deutschmate/utils/constants.dart';
import 'package:deutschmate/models/translation_model.dart';
import 'package:flutter/material.dart';

class CustomTranslationWidget extends StatelessWidget {
  final TranslationModel translation;
  const CustomTranslationWidget({super.key, required this.translation});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.7),
        borderRadius: BorderRadius.circular(15),
      ),

      child: ListTile(
        leading: Image.asset("assets/images/${translation.imgPath}"),
        title: Text(
          translation.englishText,
          style: fontStyle(fontSize: 23, useDarkText: false),
        ),
        subtitle: Text(
          translation.germanText,
          style: fontStyle(
            fontSize: 19,
            customColor: Colors.grey[300],
            useDarkText: false,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            translation.playSound();
          },
          icon: Icon(Icons.play_arrow, size: 40, color: iconColor),
        ),
      ),
    );
  }
}
