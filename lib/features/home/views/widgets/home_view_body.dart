import 'package:cinevo/features/home/views/widgets/all_categories_list_view.dart';
import 'package:cinevo/features/home/views/widgets/banners_list.dart';
import 'package:cinevo/features/home/views/widgets/custom_app_bar.dart';
import 'package:cinevo/features/home/views/widgets/main_category_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          const CustomAppBar(),
          SizedBox(height: height * .01),
          const MainCategoryList(),
          SizedBox(height: height * .02),
          const BannersList(),
          const AllCategoriesListView(),
        ],
      ),
    );
  }
}
