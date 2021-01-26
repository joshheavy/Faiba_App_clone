import 'package:faiba/models/bundles.dart';
import 'package:faiba/providers/bundles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BundlesPage extends StatelessWidget {
  const BundlesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<BundleProvider>(context).bloc;
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Bundle'),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
                stream: bloc.bundles,
                builder: (context, snapshot) {
                  List<Bundle> bundles = snapshot.data;
                  if (snapshot.hasData) {
                    return ListView.separated(
                      itemCount: bundles.length,
                      separatorBuilder: (context, index) => Divider(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            _showDialog(context, bundles);
                          },
                          title: Text(
                            bundles[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            bundles[index].amount
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 14.0,
                            color: Colors.grey[300],
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
        ],
      ),
    );
  }

  // user defined function
  void _showDialog(BuildContext context, List<Bundle> bundles) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("Buy Bundle"),
          content: Text(
            "Buy Daily Data 1GB for ksh.50.00?",
            style: TextStyle(color: Colors.grey),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: new Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
