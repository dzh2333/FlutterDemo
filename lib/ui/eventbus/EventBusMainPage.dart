import 'package:flutter/material.dart';
import 'package:flutterdemo/util/eventbus/EventBus.dart';


class EventBusMainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _EventBusPageState();
  }
}

class _EventBusPageState extends State<EventBusMainPage>{

  String textRes = "";

  @override
  void initState() {

  }

  @override
  void deactivate() {
    super.deactivate();
    EventBus().register("testEvent", (arg){
      setState(() {
        textRes = "${arg}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EventBus事件接收页"),
      ),
      body: Column(
        children: <Widget>[
          Text("参数：${textRes}"),
          RaisedButton(
            onPressed: (){
              Navigator.pushNamed(context, "/EventBusNotifyPage");
            },
            child: Text("去传递页"),
          )
        ],
      )
    );
  }

  @override
  void dispose() {
    super.dispose();
    EventBus().unRegister("testEvent");
  }
}