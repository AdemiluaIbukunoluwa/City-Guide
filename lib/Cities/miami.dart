import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Miami extends StatefulWidget {
  const Miami({Key? key}) : super(key: key);

  @override
  State<Miami> createState() => _MiamiState();
}

class _MiamiState extends State<Miami> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text("Miami"))
    );
  }
}
