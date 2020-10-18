import 'package:flutter/material.dart';

class NewRouteAndRemoveUntilPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Title"),),
      body: Column(
        children: <Widget>[
          Text("跳转到新的路由，并且关闭给定路由之前的有所路由"),
          RaisedButton(
            onPressed: (){
              Navigator.pop(context, "结束返回");
            },
            child: Text("点击关闭"),
          ),
        ],
      )
    );
  }
}