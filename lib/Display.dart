import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShowInfo.dart';

//maps through objects to show the name all locations in a particular city and category
//sends data to ShowInfo
class Display extends StatelessWidget {
  final obj;
  Display({Key? key, required this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: obj.map<Widget>((var place) {
      return GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 40),
          child: Row(
            children: [
              const Icon(Icons.location_on),
              const SizedBox(width: 10),
              Text(place['name']!)
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return ShowInfo(
              name: place['name'],
              address: place['address'],
              imageurl: place['image'],
              mobile: place["phone"],
            );
          }));
        },
      );
    }).toList());
  }
}
