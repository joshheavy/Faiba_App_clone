import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        dotBgColor: Colors.transparent,
        dotColor: Colors.transparent,
        showIndicator: false,
        images: [
          ExactAssetImage('assets/images/fb1.jpg'),
          ExactAssetImage('assets/images/fb2.jpg'),
          ExactAssetImage('assets/images/fb3.jpg'),
        ],
      )
    );
  }
}
