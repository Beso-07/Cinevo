import 'package:cinevo/core/constants/colors.dart';
import 'package:flutter/material.dart';

class SigninWith extends StatelessWidget {
  const SigninWith({super.key, required this.imgPath});
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kTextFieldBGcolor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imgPath, width: 30),
        ),
      ),
    );
  }
}
