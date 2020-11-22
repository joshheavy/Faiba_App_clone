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
          Card(
            elevation: 20,
            child: Container(
              height: 200,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Faiba Mobile"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(50),
                                child: IconButton(
                                    icon: Icon(Icons.call, color: Colors.green),
                                    onPressed: () {})),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Buy airtime"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(50),
                                child: IconButton(
                                    icon: Icon(Icons.call, color: Colors.green),
                                    onPressed: () {})),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Buy airtime"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(50),
                                child: IconButton(
                                    icon: Icon(Icons.call, color: Colors.green),
                                    onPressed: () {})),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Buy airtime"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          CustomCard(
            text: 'Faiba Fixed',
          ),
        ],
      ),
    );
  }
}
