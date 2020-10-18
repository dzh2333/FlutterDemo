import 'package:flutter/material.dart';
import 'package:flutterdemo/ui/listview/GridViewPage.dart';
import 'package:flutterdemo/ui/listview/ListViewPage.dart';
import 'package:flutterdemo/ui/net/FrameNetRequestPage.dart';
import 'package:flutterdemo/ui/pic/LocalPicPage.dart';
import 'package:flutterdemo/ui/pic/NetPicLoadPage.dart';
import 'package:flutterdemo/ui/route/NewRouteAndRemoveUntilPage.dart';
import 'package:flutterdemo/ui/route/NewRouteAndReplacePage.dart';
import 'package:flutterdemo/ui/route/NewRouteOnGeneratePage.dart';
import 'package:flutterdemo/ui/route/NewRoutePage.dart';
import 'package:flutterdemo/ui/route/NewRouteParameterPage.dart';

void main() => runApp(new TestOne());

class TestOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "主页",
      routes: {
        "/": (context) => MainPage(),
        "/NewRoutePage": (context) => NewRoutePage(),
        "/NewRouteParameterPage": (context) => NewRouteParameterPage(),
        "/NewRouteAndReplacePage": (context) => NewRouteAndReplacePage(),
        "/NewRouteAndRemoveUntilPage": (context) => NewRouteAndRemoveUntilPage(),
        //ListView
        "/ListViewPage": (context) => GridViewPage(),
        "/GridViewPage": (context) => ListViewPage(),

        //Net Res Load
        "/NetPicLoadPage" :  (context) => NetPicLoadPage(),
        "/LocalPicLoadPage" :  (context) => LocalPicLoadPage(),
        "/LocalPicLoadPage" :  (context) => LocalPicLoadPage(),

        //Net Request
        "/FrameNetRequestPage" :  (context) => FrameNetRequestPage(),

      },
      onGenerateRoute: (RouteSettings settings){
        WidgetBuilder builder;
        switch(settings.name){
          case '/signup/personal_info':
            builder = (BuildContext _) => NewRouteOnGeneratePage();
            break;
          default:
            throw Exception('Invaild route  ${settings.name}');
            break;
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("主页"),),
      body: Column(
        children: <Widget>[
          RaisedButton(onPressed: () async {
            Navigator.pushNamed(context, "/NewRoutePage");
          },
            child: Text("不带参数路由跳转"),
          ),
          RaisedButton(onPressed: () async {
            Navigator.pushNamed(context,
                "/NewRouteParameterPage",
                arguments: <String, String>{
                  'srt1': '我是参数',
                });
            // 带参数的路由跳转，并且监听返回
            // Navigator.push(context,
            //     new MaterialPageRoute(
            //     builder: (context) =>  NewRouteParameterPage(),
            // )).then((rse){
            //   //获取返回处理
            // });
            //Navigator.of(context).pop({"res" : "parameter"});
          }, child: Text("带参数路由跳转"),
          ),
          RaisedButton(onPressed: () async {
            Navigator.pushReplacementNamed(context, "/NewRouteAndReplacePage");
          }, child: Text("跳转新页面并且替换，比如登录跳转主页"),
          ),
          RaisedButton(onPressed: () async {
            Navigator.pushNamedAndRemoveUntil(context,
                "/NewRouteAndRemoveUntilPage",
                //关闭给定路由之前的有所路由
                // ModalRoute.withName("you keep stack parameter")

                //true 保留跳转的当前栈
                (route) => false,
              arguments: {"parameter" : "you parameter"}
            );
            },
            child: Text("跳转到新的路由，并且关闭给定路由之前的有所路由"),
          ),
          RaisedButton(onPressed: () async {
            Navigator.pushNamed(context, "/signup/personal_info");
          }, child: Text("onGenerateRoute"),
          ),

          //ListView
          RaisedButton(onPressed: () async {
            Navigator.pushNamed(context, "/GridViewPage");
          }, child: Text("GridView"),
          ),
          RaisedButton(onPressed: () async {
            Navigator.pushNamed(context, "/ListViewPage");
          }, child: Text("ListView"),
          ),

          //NetResLoad
          RaisedButton(onPressed: () async {
            Navigator.pushNamed(context, "/NetPicLoadPage");
          }, child: Text("网络图片加载"),
          ),
          RaisedButton(onPressed: () async {
            Navigator.pushNamed(context, "/LocalPicLoadPage");
          }, child: Text("本地图片加载"),
          ),


          //框架网络请求   https://github.com/flutterchina/dio
          RaisedButton(onPressed: () async {
            Navigator.pushNamed(context, "/FrameNetRequestPage");
          }, child: Text("使用框架网络请求"),
          ),
        ],
      ),
    );
  }
}





