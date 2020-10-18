
import 'package:flutter/material.dart';
import 'package:flutterdemo/listview/ListViewTest.dart';
import 'package:flutterdemo/listview/SingleChildScrollListView.dart';
import 'package:flutterdemo/listview/GridViewTest.dart';
import 'package:flutterdemo/ui/ListViewPage.dart';
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
        ],
      ),
    );
  }
}





