import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: ListView.builder(
          itemBuilder: (context, i){
            switch(i){
                case 0:
                return   RaisedButton(onPressed: () async {
                  Navigator.pushNamed(context, "/NewRoutePage");
                },
                  child: Text("不带参数路由跳转"),
                );
                case 1:
                return  RaisedButton(onPressed: () async {
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
                        );
              case 2:
                return RaisedButton(onPressed: () async {
                    Navigator.pushReplacementNamed(context, "/NewRouteAndReplacePage");
                    },
                    child: Text("跳转新页面并且替换，比如登录跳转主页"),
                  );
              case 3:
                return RaisedButton(onPressed: () async {
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
                );
              case 4:
                return RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/signup/personal_info");
                  }, child: Text("onGenerateRoute"),
                  );
              case 5:
                return RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/GridViewPage");
                  }, child: Text("GridView"),
                  );
              case 6:
                return   RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/ListViewPage");
                  }, child: Text("ListView"),
                  );
              case 7:
                return   RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/NetPicLoadPage");
                  }, child: Text("网络图片加载"),
                  );
              case 8:
                return   RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/LocalPicLoadPage");
                  }, child: Text("本地图片加载"),
                  );
              case 9:
              //框架网络请求   https://github.com/flutterchina/dio
                return  RaisedButton(onPressed: () async {
                  Navigator.pushNamed(context, "/FrameNetRequestPage");
                 }, child: Text("使用框架网络请求"),
                  );
              case 10:
                return  RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/ToolbarPage");
                  }, child: Text("标题栏"),
                  );
              case 11:
                return   RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/DrawerPage");
                  }, child: Text("侧滑菜单"),
                  );
              case 12:
                return   RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/DrawerPage");
                  }, child: Text("复杂布局"),
                  );
              case 13:
              //EventBus测试
                return RaisedButton(onPressed: () async {
                    Navigator.pushNamed(context, "/EventBusMainPage");
                  }, child: Text("EventBusTest"),
                  );
            }
            return null;
          },
      )
    );
  }
}





