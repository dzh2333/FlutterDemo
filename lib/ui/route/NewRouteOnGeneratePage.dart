import 'package:flutter/material.dart';

class NewRouteOnGeneratePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Title"),),
        body: Column(
          children: <Widget>[
            Text("onGenerateRoute方式"),
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