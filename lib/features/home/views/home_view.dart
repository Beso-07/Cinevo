import 'package:cinevo/features/home/views/widgets/banners_list.dart';
import 'package:cinevo/features/home/views/widgets/main_category_list.dart';
import 'package:cinevo/features/home/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.withOpacity(.8), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Column(
            children: [
              const CustomAppBar(),
              SizedBox(height: height * .01),
              const MainCategoryList(),
              SizedBox(height: height * .01),
              const BannersList(),
            ],
          ),
        ),
      ),
    );
  }
}
