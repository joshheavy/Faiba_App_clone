import 'package:flutter/foundation.dart';

class Bundle {
  final String title;
  final String amount;

  const Bundle({@required this.title,@required this.amount});

  static List<Bundle> bundleList = [
    Bundle(title: 'Daily Data 1GB', amount: 'Ksh.50.00'),
    Bundle(title: 'Weekly Data 8GB', amount: 'Ksh.300.00'),
    Bundle(title: 'Weekly Data 15GB', amount: 'Ksh.500.00'),
    Bundle(title: 'Monthly Data 25GB', amount: 'Ksh.1000.00'),
    Bundle(title: 'Monthly Data 40GB', amount: 'Ksh.2000.00'),
    Bundle(title: 'Monthly Data 70GB', amount: 'Ksh.3000.00'),
    Bundle(title: 'Monthly Data 120GB', amount: 'Ksh.4000.00'),
    Bundle(title: 'Monthly Data 210GB', amount: 'Ksh.6000.00'),
    Bundle(title: 'Fisi Hour', amount: 'Ksh.150.00'),
    Bundle(title: 'Kifaru Mobile Plan', amount: 'Ksh.1500.00'),
    Bundle(title: 'Ndovu Mobile Plan', amount: 'Ksh.2500.00'),
    Bundle(title: 'Simba Mobile Plan', amount: 'Ksh.4000.00'),
  ];
}
