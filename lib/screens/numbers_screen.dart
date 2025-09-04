import 'package:deutschmate/data/numbers_data.dart';
import 'package:deutschmate/models/screen_model.dart';
import 'package:deutschmate/screens/layout_screen.dart';
import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      screenModel: ScreenModel(
        screenName: "Numbers",
        screenImg: "numbers",
        translations: numbers,
      ),
    );
  }
}
