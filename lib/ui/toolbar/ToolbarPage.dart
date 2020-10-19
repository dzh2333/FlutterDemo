import 'package:flutter/material.dart';

class ToolbarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
        actions: <Widget>[
          Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(
                  Icons.menu,
                  size: 28,
                ),
                new Text(
                  '菜单',
                  style: new TextStyle(fontSize: 10),
                )
              ],
            ),
            margin: EdgeInsets.only(right: 15),
          ),

        ],
      ),
    );
  }
}