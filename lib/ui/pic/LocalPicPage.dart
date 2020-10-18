import 'package:flutter/material.dart';

class LocalPicLoadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("App内图片资源加载"),
      ),
      body: new Center(
          child: new Image.asset("images/pic1.png")  //路径要写全
      ),
    );
  }
}



