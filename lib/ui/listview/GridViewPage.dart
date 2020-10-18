import 'package:flutter/material.dart';
import 'package:flutterdemo/listview/GridViewTest.dart';


class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          title: new Text("Flutter Demo"),
        ),
        body:GridViewTest()
    );
  }
}