import 'package:flutter/material.dart';

class SingleChildScrollListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String str = "abcdd";
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: str.split("")
                .map((c) => Text(c, textScaleFactor: 2.0,))
                .toList(),
          ),
        ),
      ),
    );
  }

}