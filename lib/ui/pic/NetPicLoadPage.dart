import 'package:flutter/material.dart';

class NetPicLoadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          title: new Text("网络图片加载"),
        ),
        body: new Center(
          child: Image.network('https://mat1.gtimg.com/pingjs/ext2020/qqindex2018/dist/img/qq_logo_2x.png',fit: BoxFit.fill),
      ),
    );
  }
}

