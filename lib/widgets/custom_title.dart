import 'package:deutschmate/constants.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 15),
          Container(
            color: Colors.grey[300],
            width: double.infinity,
            child: Center(child: Text(title, style: fontStyle(fontSize: 26))),
          ),
        ],
      ),
    );
  }
}
