import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontFamily: 'Indie Flower', fontSize: 28),
    );
  }
}
