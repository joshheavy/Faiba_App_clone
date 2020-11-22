// ignore: non_constant_identifier_names
import 'package:faiba/models/shops.dart';

var shops = Shop.shopList;

class ShopManager {
  Stream<List<Shop>> get shopList async* {
    for (var i = 0; i < shops.length; i++) {
      await Future.delayed(Duration(seconds: 2));
      yield shops.sublist(0, i + 1);
    }
  }
}
