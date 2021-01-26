import 'package:faiba/bloc/shop_bloc.dart';
import 'package:flutter/material.dart';

class ShopProvider with ChangeNotifier {
  ShopBloc _bloc;

  ShopProvider() {
    _bloc = ShopBloc();
  }

  ShopBloc get bloc => _bloc;
}
