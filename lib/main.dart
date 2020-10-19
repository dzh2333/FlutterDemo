import 'package:flutter/material.dart';
import 'package:flutterdemo/ui/eventbus/EventBusMainPage.dart';
import 'package:flutterdemo/ui/eventbus/EvntBusNotifyPage.dart';
import 'package:flutterdemo/ui/listview/GridViewPage.dart';
import 'package:flutterdemo/ui/listview/ListViewPage.dart';
import 'package:flutterdemo/ui/navigator/NavigatorPage.dart';
import 'package:flutterdemo/ui/net/FrameNetRequestPage.dart';
import 'package:flutterdemo/ui/pic/LocalPicPage.dart';
import 'package:flutterdemo/ui/pic/NetPicLoadPage.dart';
import 'package:flutterdemo/ui/route/NewRouteAndRemoveUntilPage.dart';
import 'package:flutterdemo/ui/route/NewRouteAndReplacePage.dart';
import 'package:flutterdemo/ui/route/NewRouteOnGeneratePage.dart';
import 'package:flutterdemo/ui/route/NewRoutePage.dart';
import 'package:flutterdemo/ui/route/NewRouteParameterPage.dart';
import 'package:flutterdemo/ui/toolbar/ToolbarPage.dart';

import 'MainPage.dart';

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

        //Android 权限
        "/AndroidPermissionTest" :  (context) => FrameNetRequestPage(),

        //UI
        "/ToolbarPage" :  (context) => ToolbarPage(),
        "/DrawerPage" :  (context) => NavigatorPage(),

        //EventBus
        "/EventBusMainPage" :  (context) => EventBusMainPage(),
        "/EventBusNotifyPage" :  (context) => EventBusNotifyPage(),

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

