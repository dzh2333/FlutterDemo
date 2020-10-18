import 'package:flutter/material.dart';
import 'package:flutterdemo/listview/ListViewTest.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(
            title: new Text("Flutter Demo"),
          ),
        body: ListViewTest()
    );
  }
}