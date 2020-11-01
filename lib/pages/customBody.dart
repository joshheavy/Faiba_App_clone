import 'package:faiba/widgets/carousels.dart';
import 'package:faiba/widgets/customCard.dart';
import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselHome(),
          CustomCard(text: 'Faiba Mobile',),
          CustomCard(text: 'Faiba Fixed',),
        ],
      ),
    );
  }
}