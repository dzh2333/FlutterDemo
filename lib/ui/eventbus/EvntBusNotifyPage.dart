import 'package:flutter/material.dart';
import 'package:flutterdemo/ui/eventbus/event/NotifyEvent.dart';
import 'package:flutterdemo/util/eventbus/EventBus.dart';


class EventBusNotifyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("通知"),
      ),
      body: RaisedButton(
        onPressed: (){
          EventBus().post("testEvent", "我是参数");
        },
        child: Text("发送消息"),
      ),
    );
  }
}