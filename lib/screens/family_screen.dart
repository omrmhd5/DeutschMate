import 'package:deutschmate/data/family_data.dart';
import 'package:deutschmate/models/screen_model.dart';
import 'package:deutschmate/screens/layout_screen.dart';
import 'package:flutter/material.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      screenModel: ScreenModel(
        screenName: "Family",
        screenImg: "family",
        translations: family,
      ),
    );
  }
}
