import 'package:faiba/models/agents.dart';
import 'package:faiba/models/shops.dart';
import 'package:faiba/services/agents_locate.dart';
import 'package:faiba/services/shop_locate.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: TabBar(
                tabs: const <Widget>[
                  Tab(
                    text: 'SHOPS',
                  ),
                  Tab(
                    text: 'AGENTS',
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(children: <Widget>[ShopWidget(), AgentWidget()]),
        ));
  }
}

class ShopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ShopManager manager = ShopManager();
    
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: StreamBuilder(
              stream: manager.shopList,
              builder: (context, snapshot) {
                List<Shop> shops = snapshot.data;
                return snapshot.hasData
                    ? ListView.builder(
                        itemCount: shops.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: shops[index].icon != null ? Icon(shops[index].icon, color: Colors.green,) : null,
                            title: Text(shops[index].title, style: TextStyle(color: Colors.black),),
                            subtitle: Text(shops[index].subtitle),
                          );
                        })
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AgentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AgentManager manager = AgentManager();

    return SingleChildScrollView(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search), hintText: 'Search'),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: StreamBuilder(
              stream: manager.agentList,
              builder: (context, snapshot) {
                List<Agent> agents = snapshot.data;
                return snapshot.hasData
                    ? ListView.builder(
                        itemCount: agents.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(agents[index].name, style: TextStyle(
                              color: Colors.black
                            )),
                            subtitle: Text(agents[index].place),
                          );
                        })
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              },
            ),
          )
        ],
      ), 
    );
  }
}
