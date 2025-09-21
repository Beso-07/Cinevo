import 'package:cinevo/core/constants/colors.dart';
import 'package:cinevo/core/constants/images_path.dart';
import 'package:cinevo/core/utils/app_router.dart';
import 'package:cinevo/core/widgets/custom_button.dart';
import 'package:cinevo/features/Auth/widgets/custom_text_field.dart';
import 'package:cinevo/features/Auth/widgets/signin_with.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32),
              Image.asset(
                ImagesPath.logo,
                width: 140,
                color: AppColors.kPrimaryColor,
              ),
              const SizedBox(height: 64),
              Row(
                children: [
                  const Text(
                    ' Create account',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              CustomTextField(hintText: 'user name'),
              const SizedBox(height: 32),
              CustomTextField(hintText: 'email'),
              const SizedBox(height: 32),
              CustomTextField(hintText: 'password', isPassword: true),
              const SizedBox(height: 32),
              CustomTextField(hintText: 'confirm password', isPassword: true),
              const SizedBox(height: 32),
              CustomButton(
                text: 'Sign Up',
                onTap: () {
                  GoRouter.of(context).push(AppRouter.homeView);
                },
              ),
              const SizedBox(height: 32),
              Text('---------- Or sign up with ----------'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SigninWith(imgPath: ImagesPath.google),
                  const SizedBox(width: 16),
                  SigninWith(imgPath: ImagesPath.facebook),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.loginView);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
