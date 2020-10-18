import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class FrameNetRequestPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NetRequestHelp();
  }
}
class _NetRequestHelp extends State{
  String res = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("框架网络请求"),
      ),
      body: Center(
        child: Text("https://www.baidu.com  参数 ：${res}"),
      ),
    );
  }

  void _getHttp() async {
    try {
      Response response = await Dio().get("https://www.baidu.com");
      setState(() {
        res = response.data;
      });

      // //Post方式
      // Response response2 = await Dio().post("https://www.baidu.com", data:{"id":0});
      // setState(() {
      //   res = response2.data;
      // });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _getHttp();
  }
}