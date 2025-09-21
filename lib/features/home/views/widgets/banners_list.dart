import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinevo/features/home/views/widgets/banner_item.dart';
import 'package:flutter/material.dart';

class BannersList extends StatelessWidget {
  const BannersList({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index, int pageViewIndex) {
        return BannerItem();
      },
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2,
        autoPlayAnimationDuration: const Duration(seconds: 1),
      ),
    );
  }
}
