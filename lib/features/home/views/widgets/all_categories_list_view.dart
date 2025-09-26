import 'package:cinevo/features/home/views/widgets/movies_horizontal_list.dart';
import 'package:flutter/material.dart';

class AllCategoriesListView extends StatelessWidget {
  const AllCategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return MoviesHorizontalList();
      },
    );
  }
}