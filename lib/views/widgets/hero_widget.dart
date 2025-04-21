import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: "bg",
          child: AspectRatio(
            aspectRatio: 1920 / 1080,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "assets/images/bg.jpg",
                colorBlendMode: BlendMode.darken,
                color: Colors.teal,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white30,
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              letterSpacing: 50.0,
            ),
          ),
        ),
      ],
    );
  }
}
