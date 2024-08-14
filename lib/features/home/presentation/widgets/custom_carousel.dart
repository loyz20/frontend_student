import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarousel extends StatelessWidget {
  final List<String> imgList;

  const CustomCarousel({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: imgList.map((item) => Center(
        child: Image.network(item, fit: BoxFit.cover, width: 1000),
      )).toList(),
    );
  }
}
