import 'package:city_guide/VARIABLES/variables-Seattle.dart' as seattle_variables;
import 'package:city_guide/VARIABLES/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seattle extends StatefulWidget{
  final String selectedCategory;
  final String selectedCity;

  const  Seattle({Key? key, required this.selectedCategory, required this.selectedCity}) : super(key: key);

  @override
  State<Seattle> createState() => _SeattleState();
}

class _SeattleState extends State<Seattle>  implements CallMethods{
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
      children: seattle_variables.hospitalsInSeattle.map((var hospital)
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
      children: seattle_variables.hotelsInSeattle.map((var hotel) {
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
      children: seattle_variables.restaurantsInSeattle.map((var restaurant) {
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
      children: seattle_variables.shoppingMallsInSeattle.map((var mall) {
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
      children:seattle_variables.sportComplexesInSeattle.map((var hospital) {
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
