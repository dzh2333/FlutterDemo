import 'package:flutter/material.dart';

//让类可以像函数一样被调用
class _CallA{

  List<Widget> buttons = [];

  call(int i, double u) => "$i xxxx $u";

  init(){
    _CallA _callA = _CallA();

    print(_callA(1, 2.0));
    print(_callA?.call(1, 2.0));

  }

}

typedef void ValueFunction(int i);

ValueFunction vt = (int i){
  print(" this is ValueFunction");
};

int2(){
  vt(10);
  vt?.call(777);
}


