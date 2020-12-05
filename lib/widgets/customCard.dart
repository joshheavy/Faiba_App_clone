import 'package:flutter/material.dart';
import 'package:faiba/pages/airtimePage.dart';
import 'package:faiba/pages/BundlesPage.dart';
import 'package:faiba/pages/balancePage.dart';
// import 'package:faiba/pages/invoicePage.dart';
// import 'package:faiba/pages/servicePage.dart';
// import 'package:faiba/pages/statementsPage.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key key,
    this.title,
    this.text1,
    this.text2,
    this.text3, this.icon1, this.icon2, this.icon3,
  }) : super(key: key);

  final String title;
  final String text1;
  final String text2;
  final String text3;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 1,
        child: Container(
          height: 200,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                                icon: Icon(icon1,
                                    color: Colors.green),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => AirtimePage()
                                  ));
                                })),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          text1,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
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
                                icon: Icon(icon2, color: Colors.green),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => BundlesPage()
                                  ));
                                })),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          text2,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
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
                                icon: Icon(icon3,
                                    color: Colors.green),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => BalancePage()
                                  ));
                                })),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          text3,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
