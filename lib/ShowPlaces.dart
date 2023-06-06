import 'package:city_guide/Keyword.dart';
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

import 'Display.dart';

//passes data to Display() based on the category and city
class ShowPlaces extends StatefulWidget {
   String selectedCategory;
   String selectedCity;
   String keyword;
   ShowPlaces({
    Key? key,
    required this.selectedCategory,
    required this.selectedCity,
     required this.keyword

  }) : super(key: key);
  @override
  State<ShowPlaces> createState() => _ShowPlacesState();
}

class _ShowPlacesState extends State<ShowPlaces> {
  @override
  Widget build(BuildContext context) {
    var obj;
      switch (widget.selectedCity) {
        case ("New York"):
          switch (widget.selectedCategory) {
            case ("Hospitals"):
              obj = new_york_variables.hospitalsInNewYork;
              break;
            case ("Hotels"):
              obj = new_york_variables.hotelsInNewYork;
              break;
            case ("Shopping Malls"):
              obj = new_york_variables.shoppingMallsInNewYork;
              break;
            case ("Restaurants"):
              obj = new_york_variables.restaurantsInNewYork;
              break;
            case ("Sports Complex"):
              obj = new_york_variables.sportComplexesInNewYork;
              break;
          }
          break;
        case ("Seattle"):
          switch (widget.selectedCategory) {
            case ("Hospitals"):
              obj = seattle_variables.hospitalsInSeattle;
              break;
            case ("Hotels"):
              obj = seattle_variables.hotelsInSeattle;
              break;
            case ("Shopping Malls"):
              obj = seattle_variables.shoppingMallsInSeattle;
              break;
            case ("Restaurants"):
              obj = seattle_variables.restaurantsInSeattle;
              break;
            case ("Sports Complex"):
              obj = seattle_variables.sportComplexesInSeattle;
              break;
          }
          break;
        case ("Houston"):
          switch (widget.selectedCategory) {
            case ("Hospitals"):
              obj = houston_variables.hospitalsInHouston;
              break;
            case ("Hotels"):
              obj = houston_variables.hotelsInHouston;
              break;
            case ("Shopping Malls"):
              obj = houston_variables.shoppingMallsInHouston;
              break;
            case ("Restaurants"):
              obj = houston_variables.restaurantsInHouston;
              break;
            case ("Sports Complex"):
              obj = houston_variables.sportComplexesInHouston;
              break;
          }
          break;
        case ("Miami"):
          switch (widget.selectedCategory) {
            case ("Hospitals"):
              obj = miami_variables.hospitalsInMiami;
              break;
            case ("Hotels"):
              obj = miami_variables.hotelsInMiami;
              break;
            case ("Shopping Malls"):
              obj = miami_variables.shoppingMallsInMiami;
              break;
            case ("Restaurants"):
              obj = miami_variables.restaurantsInMiami;
              break;
            case ("Sports Complex"):
              obj = miami_variables.sportComplexesInMiami;
              break;
          }
          break;
        case ("Boston"):
          switch (widget.selectedCategory) {
            case ("Hospitals"):
              obj = boston_variables.hospitalsInBoston;
              break;
            case ("Hotels"):
              obj = boston_variables.hotelsInBoston;
              break;
            case ("Shopping Malls"):
              obj = boston_variables.shoppingMallsInBoston;
              break;
            case ("Restaurants"):
              obj = boston_variables.restaurantsInBoston;
              break;
            case ("Sports Complex"):
              obj = boston_variables.sportComplexesInBoston;
              break;
          }
          break;
      }

    return Scaffold(
        appBar: AppBar(
            title: Text("${widget.selectedCategory} around you"),
            backgroundColor: Colors.black),
        body: widget.keyword.isNotEmpty?Keyword(keyword: widget.keyword, obj: obj)
        :Display(obj: obj)
    );
  }
}


