// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:learningf/main.dart';


 class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home:const MyHomePage(title: 'f demo'), //first screen home page
    );
  }
}

 class _MyHomePage extends StatefulWidget {
  const _MyHomePage({super.key});

  @override
  State<_MyHomePage> createState() => __MyHomePageState();
}

class __MyHomePageState extends State<_MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}