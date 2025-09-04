import 'package:deutschmate/data/animals_data.dart';
import 'package:deutschmate/models/screen_model.dart';
import 'package:deutschmate/screens/layout_screen.dart';
import 'package:flutter/material.dart';

class AnimalsScreen extends StatelessWidget {
  const AnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      screenModel: ScreenModel(
        screenName: "Animals",
        screenImg: "animals",
        translations: animals,
      ),
    );
  }
}
