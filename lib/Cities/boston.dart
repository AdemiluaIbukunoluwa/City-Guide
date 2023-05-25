import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boston extends StatefulWidget {
  const Boston({Key? key}) : super(key: key);

  @override
  State<Boston> createState() => _BostonState();
}

class _BostonState extends State<Boston> {
  var hospitals= ["", "", "", "", ""];
  var hotels= ["", "", "", "", ""];
  var restaurants= ["", "", "", "", ""];
  var shoppingMalls = ["", "", "", "", ""];
  var sportsComplexes = ["", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text("New York"), backgroundColor: Colors.black,)
    );
  }
}


