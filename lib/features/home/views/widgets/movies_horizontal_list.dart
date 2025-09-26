import 'package:cinevo/core/constants/images_path.dart';
import 'package:cinevo/core/constants/styles.dart';
import 'package:cinevo/core/widgets/custom_movie_cover.dart';
import 'package:flutter/material.dart';

class MoviesHorizontalList extends StatelessWidget {
  const MoviesHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Comedy', style: Styles.textStyle18),
              InkWell(
                onTap: () {},
                child: Text('Sea All', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: CustomMovieCover(movieImage: ImagesPath.testImage),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
