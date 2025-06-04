import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/about_me_section_body.dart';

class CustomMainBodyCarouselSlider extends StatelessWidget {
  const CustomMainBodyCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.77,
      child: CarouselSlider(
        options: CarouselOptions(
          scrollDirection: Axis.vertical,
          viewportFraction: 1,
          enableInfiniteScroll: false,
        ),
        items: [AboutMeSectionBody(), AboutMeSectionBody()],
      ),
    );
  }
}
