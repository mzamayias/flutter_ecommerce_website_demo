import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import '../../footer_field/mobile/footer_field_mobile.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: double.infinity,
      color: Colors.transparent,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 1200),
          enlargeCenterPage: true,
          autoPlayInterval: const Duration(milliseconds: 4200),
          pauseAutoPlayOnManualNavigate: true,
        ),
        items: mobileFooterFields,
      ),
    );
  }
}