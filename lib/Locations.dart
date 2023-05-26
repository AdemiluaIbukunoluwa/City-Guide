import 'package:city_guide/main_screen.dart' as mainscreen;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/variables-NewYork.dart' as variables;

class Locations extends StatelessWidget {
  final String selectedCategory;
  final String selectedCity;
  const Locations(
      {Key? key, required this.selectedCategory, required this.selectedCity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:  Text("$selectedCategory around you"), backgroundColor: Colors.black),
        body:
            //nested ternary operator
            //if the selected category is Hospitals, call function ShowHospitals
            selectedCategory == "Hospitals"
                ? showHospitals()
                : selectedCategory == "Hotels"
                    ? showHotels()
                    : selectedCategory == "Restaurants"
                        ? showRestaurants()
                        : selectedCategory == "Shopping Malls"
                            ? showMalls()
                            : selectedCategory == "Sports Complex"
                                ? showSportComplexes()
                                :
                                //if nothing is selected(not really possible), call doNothing()
                                doNothing());
  }

  Column showHospitals() {
    //mapping through each element in the 'hospitals in new york object
    return Column(
      children: variables.hospitalsInNewYork.map((var hospital) {
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

  Column showHotels() {
    return Column(
      children: variables.hotelsInNewYork.map((var hotel) {
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

  Column showRestaurants() {
    return Column(
      children: variables.restaurantsInNewYork.map((var restaurant) {
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

  Column showMalls() {
    return Column(
      children: variables.shoppingMallsInNewYork.map((var mall) {
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

  Column showSportComplexes() {
    return Column(
      children: variables.sportComplexesInNewYork.map((var hospital) {
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

  Center doNothing() {
    return const Center(
        child: Text(
      "Selection not available",
      style: TextStyle(color: Colors.red),
    ));
  }
}
