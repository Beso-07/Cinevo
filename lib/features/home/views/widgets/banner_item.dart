import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Image.network(
        'https://static1.cbrimages.com/wordpress/wp-content/uploads/2024/12/dexter-original-sin.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
