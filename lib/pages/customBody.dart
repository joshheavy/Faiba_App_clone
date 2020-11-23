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
          CustomCard1(
            title: "Faiba Home",
            text1: "Buy Airtime",
            text2: "Buy Bundles",
            text3: "Check Balance",
            icon1: Icons.phone_in_talk_outlined,
            icon2: Icons.wifi,
            icon3: Icons.donut_large_outlined,
          ),
          SizedBox(
            height: 1.0,
          ),
          CustomCard1(
            title: "Faiba Fixed",
            text1: "Statement",
            text2: "Invoices",
            text3: "Services",
            icon1: Icons.save_alt_outlined,
            icon2: Icons.inbox_outlined,
            icon3: Icons.public_sharp,
          ),
        ],
      ),
    );
  }
}