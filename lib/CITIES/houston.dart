import 'package:city_guide/VARIABLES/variables-Houston.dart' as houston_variables;
import 'package:city_guide/VARIABLES/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Houston extends StatefulWidget{
  final String selectedCategory;
  final String selectedCity;

  const  Houston({Key? key, required this.selectedCategory, required this.selectedCity}) : super(key: key);

  @override
  State<Houston> createState() => _HoustonState();
}

class _HoustonState extends State<Houston>  implements CallMethods{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:  Text("${widget.selectedCategory} around you"), backgroundColor: Colors.black),
        body:
        // nested ternary operator
        // if the selected category is Hospitals, call function ShowHospitals
        Column(
          children: [
            widget.selectedCategory == "Hospitals"
                ? showHospitals()
                : widget.selectedCategory == "Hotels"
                ? showHotels()
                : widget.selectedCategory == "Restaurants"
                ? showRestaurants()
                : widget.selectedCategory == "Shopping Malls"
                ? showMalls()
                : widget.selectedCategory == "Sports Complex"
                ? showSportComplexes()
                :
            //if nothing is selected(not really possible), call doNothing()
            doNothing(),
          ],
        ));
  }
  @override
  showHospitals() {
    //mapping through each element in the 'hospitals in new york object
    return Column(
      children: houston_variables.hospitalsInHouston.map((var hospital)
      {
        return Container(
          margin: const EdgeInsets.only(bottom: 20, top: 40),
          child: Row(
            children: [const Icon(Icons.local_hospital),
              const SizedBox(width: 10),
              Text(hospital['name']!)],
          ),
        );
      }).toList(),
    );
  }


  @override
  showHotels() {
    return Column(
      children: houston_variables.hotelsInHouston.map((var hotel) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20, top: 40),
          child: Row(
            children: [const Icon(Icons.hotel),
              const SizedBox(width: 10),
              Text(hotel['name']!)],
          ),
        );
      }).toList(),
    );
  }

  @override
  showRestaurants() {
    return Column(
      children:  houston_variables.restaurantsInHouston.map((var restaurant) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20, top: 40),
          child: Row(
            children: [
              const Icon(Icons.restaurant_menu),
              const SizedBox(width: 10),
              Text(restaurant['name']!)
            ],
          ),
        );
      }).toList(),
    );
  }

  @override
  showMalls() {
    return Column(
      children:  houston_variables.shoppingMallsInHouston.map((var mall) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20, top: 40),
          child: Row(
            children: [const Icon(Icons.local_mall_rounded),
              const SizedBox(width: 10),
              Text(mall['name']!)],
          ),
        );
      }).toList(),
    );
  }

  @override
  showSportComplexes() {
    return Column(
      children:  houston_variables.sportComplexesInHouston.map((var hospital) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10, top: 40),
          child: Row(
            children: [const Icon(Icons.sports_baseball_rounded),
              const SizedBox(width: 10),
              Text(hospital['name']!)],
          ),
        );
      }).toList(),
    );
  }

  @override
  doNothing() {
    return const Center(
        child: Text(
          "Selection not available",
          style: TextStyle(color: Colors.red),
        ));
  }
}
