import 'package:city_guide/main_screen.dart' as mainscreen;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/variables.dart' as variables;

class NewYork extends StatelessWidget {
  final String selectedCategory;
  final String selectedCity;
  NewYork(
      {Key? key, required this.selectedCategory, required this.selectedCity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("New York"), backgroundColor: Colors.black),
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
        return Row(
          children: [const Icon(Icons.local_hospital), Text(hospital['name']!)],
        );
      }).toList(),
    );
  }

  Column showHotels() {
    return Column(
      children: variables.hotelsInNewYork.map((var hotel) {
        return Row(
          children: [const Icon(Icons.hotel), Text(hotel['name']!)],
        );
      }).toList(),
    );
  }

  Column showRestaurants() {
    return Column(
      children: variables.restaurantsInNewYork.map((var restaurant) {
        return Row(
          children: [
            const Icon(Icons.restaurant_menu),
            Text(restaurant['name']!)
          ],
        );
      }).toList(),
    );
  }

  Column showMalls() {
    return Column(
      children: variables.shoppingMallsInNewYork.map((var mall) {
        return Row(
          children: [const Icon(Icons.local_mall_rounded), Text(mall['name']!)],
        );
      }).toList(),
    );
  }

  Column showSportComplexes() {
    return Column(
      children: variables.sportComplexesInNewYork.map((var hospital) {
        return Row(
          children: [const Icon(Icons.local_hospital), Text(hospital['name']!)],
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
