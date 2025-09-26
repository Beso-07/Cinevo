import 'package:flutter/material.dart';

class CustomMovieCover extends StatelessWidget {
  const CustomMovieCover({super.key, required this.movieImage});
  final String movieImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: .75,
        child: Image.network(movieImage, fit: BoxFit.fill, width: 80),
      ),
    );
  }
}
