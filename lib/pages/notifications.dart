import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Column(
        children: [
          BoxCard(
            title: 'Update Your contact information',
            subtitle:
                'Dear customer to help us serve you better, kindly update your current contant details using the link below;',
          ),
          SizedBox(
            height: 10.0,
          ),
          BoxCard(
            title:
                'Airtime and Fixed Services Payments now available on Pesalink',
            subtitle:
                'We are delighted to inform you that you can pay your Faiba internet connection via M-pesa through the Faiba App in 4 easy steps',
          ),
        ],
      ),
    );
  }
}

class BoxCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const BoxCard({
    Key key,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white38),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(1),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.black87),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 30.0,
                  width: 400,
                  child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'Learn More',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ))),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]),
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(color: Colors.white, offset: Offset(0, 1))
                      ]),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
