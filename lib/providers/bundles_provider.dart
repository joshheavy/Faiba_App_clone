import 'package:faiba/bloc/bundles_bloc.dart';
import 'package:flutter/cupertino.dart';

class BundleProvider with ChangeNotifier {
  BundleBloc _bloc;

  BundleProvider() {
    _bloc = BundleBloc();
  }

  BundleBloc get bloc => _bloc;
}
