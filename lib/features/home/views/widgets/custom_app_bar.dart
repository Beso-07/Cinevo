import 'package:cinevo/core/constants/images_path.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(ImagesPath.logoIcon, width: 50, color: Colors.white),
          Icon(Icons.menu, size: 35, color: Colors.white),
        ],
      ),
    );
  }
}
