import 'package:cinevo/core/constants/colors.dart';
import 'package:cinevo/core/constants/images_path.dart';
import 'package:cinevo/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const id = "splash_view";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.onboardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImagesPath.logo,
          width: 180,
          color: AppColors.kPrimaryColor,
        ),
      ),
    );
  }
}
