import 'package:faiba/models/shops.dart';
import 'package:rxdart/rxdart.dart';

class ShopBloc {
  final _shops = BehaviorSubject<List<Shop>>();

  ShopBloc() {
    getShop();
  }

  // create a stream of shops
  Stream<List<Shop>> get shops => _shops.stream;

  // create a sink to add shops
  Function(List<Shop>) get addShops => _shops.sink.add;


  void dispose() {
    _shops.close();
  }

  void getShop() {
    var shopList = List<Shop>();

    try {
      var shops = Shop.shopList;
      shops.forEach((shop) => shopList.add(shop));
    } catch (error) {
      print(error);
    }
    addShops(shopList);
  }
}






  // Future<void> shopList(List<Shop> shops) async {
  //   for (var i = 0; i < shops.length; i++) {
  //     await Future.delayed(Duration(seconds: 2));
  //     return shops.sublist(0, i + 1);
  //   }
  // }