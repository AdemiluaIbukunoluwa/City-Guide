import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seattle extends StatefulWidget {
  const Seattle({Key? key}) : super(key: key);

  @override
  State<Seattle> createState() => _SeattleState();
}

class _SeattleState extends State<Seattle> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text("Seattle"))
    );
  }
}
