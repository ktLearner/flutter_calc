// open source very popular language for apps in both ios and android

//widgets -->building blocks
// widgets hold together all the things
// implementation of widgets are executed by class and object
//widgets are related to each other by parent child relation ships
// types: stateless and stateful

// stateless : it never changes eg icon and text
// they are inherited from state less widget class

// stateful :it's dynamic , it can change its appearance in response to events or changes in state(data).eg:checkbox, slider
// they are inherited from stateful widgets and state wigets
// state widget ->stores the data
// stateful wigit  ->

// state represents the data on the widget.eg the text which has to be displayed on screen is it's state.

// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget(
      {super.key}); //key is advance // it works even if const is not there

  @override //as we have our implementation  // it acepts context ->this widget was built at a particul instant in a particular situation we can use to navigate where the wigit is using context
  Widget build(BuildContext context) {
    //method called built  // return tye of method is widget
    return textWidget();
  }

  Text textWidget() {
    return Text("flutter");
  }
}
 class MyWidget2 extends StatefulWidget {
  const MyWidget2({super.key});

  @override
  State<MyWidget2> createState() => _MyWidget2State();  //it returns a state object
}

class _MyWidget2State extends State<MyWidget2> {
  String str = "Flutter";
  @override
  Widget build(BuildContext context) {
     return textWidget();
  }
  Text textWidget() {
    return Text(str);
  }

  void changeString(){
    if (str == "Flutter") {
      str = "Dart";
    }
    else{
      str = "Flutter";
    }
    setState(() {
    });
  }




}