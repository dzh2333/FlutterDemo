import 'package:flutter/material.dart';

 class NewRouteParameterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Title"),),
        body: Column(
          children: <Widget>[
            Text("参数为" +  ModalRoute.of(context).settings.arguments.toString()),
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