import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NavigatorState();
  }
}

class _NavigatorState extends State<NavigatorPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("侧滑"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("DMark"),
              accountEmail: Text("dmark@xxx.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: new ExactAssetImage("images/pic1.png"),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: new ExactAssetImage("images/cypk.jpg"),
                )
              ),
            ),
            ListTile(
              title: Text("11"),
              trailing: Icon(Icons.memory),
              onTap: (){
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
      body: Text("center"),
    );
  }
}