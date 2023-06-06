import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:city_guide/VARIABLES/variables-Boston.dart' as boston_variables;
import 'package:city_guide/VARIABLES/variables-Miami.dart' as miami_variables;
import 'package:city_guide/VARIABLES/variables-Houston.dart'
as houston_variables;
import 'package:city_guide/VARIABLES/variables-NewYork.dart'
as new_york_variables;
import 'package:city_guide/VARIABLES/variables-Seattle.dart'
as seattle_variables;

import 'ShowInfo.dart';


class Keyword extends StatefulWidget {
  final String keyword;
  final obj;
   Keyword({Key? key, required this.keyword, this.obj}) : super(key: key);

  @override
  State<Keyword> createState() => _KeywordState();
}

class _KeywordState extends State<Keyword> {
  @override
  Widget build(BuildContext context) {
    var locations = [];

    //add each value in the object to the locations list
    for(var item in widget.obj){
      locations.add(item);
    }
    var searchResult = [];
    //if the search keyword is not empty
    if(widget.keyword.isNotEmpty && widget.keyword != ""){
      locations.forEach((location) {
        //check if the locations in the locations list match the search keyword
        if(location['name'].toLowerCase().contains(widget.keyword.toLowerCase())){
          searchResult.add(location);
        }
      });
    }

    return Scaffold(
      // appBar: AppBar(),
      body: locations.isNotEmpty?(Column(
    children: searchResult.map((var place) {
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
    }).toList()
      )):
          Center(
            child: Text("Not Available", style: TextStyle(color: Colors.red)),
          )
    );
  }
}
