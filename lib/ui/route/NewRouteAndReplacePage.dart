import 'package:flutter/material.dart';

class NewRouteAndReplacePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Title"),),
        body: Column(
          children: <Widget>[
            Text("跳转新页面并且替换，比如登录跳转主页"),
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