import 'package:deutschmate/data/colors_data.dart';
import 'package:deutschmate/models/screen_model.dart';
import 'package:deutschmate/screens/layout_screen.dart';
import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      screenModel: ScreenModel(
        screenName: "Colors",
        screenImg: "colors",
        translations: colors,
      ),
    );
  }
}
