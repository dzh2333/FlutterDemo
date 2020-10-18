import 'package:flutter/material.dart';
import 'package:flutterdemo/listview/GridViewTest.dart';


class ListViewPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(
            title: new Text("Flutter Demo"),
          ),        body:GridViewTest()
      ),
    );
  }
}