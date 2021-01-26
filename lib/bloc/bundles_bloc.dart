import 'package:faiba/models/bundles.dart';
import 'package:rxdart/rxdart.dart';

class BundleBloc {
  final _bundles = BehaviorSubject<List<Bundle>>();

  BundleBloc() {
    getBundles();
  }

  // create a stream of bundles
  Stream<List<Bundle>> get bundles => _bundles.stream;

  // Create a sink to add bundles
  Function(List<Bundle>) get addBundles => _bundles.sink.add;

  void dispose() {
    _bundles.close();
  }

  void getBundles(){
    var bundleList = List<Bundle>();
    try {
      var bundles = Bundle.bundleList;
      bundles.forEach((bundle) => bundleList.add(bundle));
    } catch (error) {
      print(error);
    }

    addBundles(bundleList);
  }
}
