import 'package:city_guide/Keyword.dart';
import 'package:city_guide/ShowPlaces.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShowInfo.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late String selectedCategory;
  String city = "New York";
  String amenity = "Hospitals";
  var amenities = [
    "Hospitals",
    "Hotels",
    "Restaurants",
    "Shopping Malls",
    "Sports Complex"
  ];
  var cities = ["New York", "Miami", "Boston", "Houston", "Seattle"];
  //to get the text from the search bar
  // late var keyword = TextEditingController();
  late String keyword="";
  //
  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   keyword.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("City Guide"), backgroundColor: Colors.black),
        body: SizedBox(
          width: 500,
          child: Container(
            //sets top margin for entire body(container)
            margin: const EdgeInsets.only(top: 50),
            width: 350.0,
            child: Column(children: <Widget>[
              //CITIES
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("CITIES:"),
                      //container around dropdown button to set color
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(211, 211, 211, 211)),
                        child: SizedBox(
                          //width of dropdown button
                          width: 170,
                          child: DropdownButton(
                              isExpanded: true,
                              value: city,
                              dropdownColor: Colors.grey,
                              items: cities.map((String item) {
                                return DropdownMenuItem(
                                    alignment: Alignment.center,
                                    value: item,
                                    child: Text(item));
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  city = newValue!;
                                });
                              }),
                        ),
                      )
                    ]),
              ),
              //CATEGORIES
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Text beside dropdown(categories)
                      const Text("CATEGORIES:"),
                      Container(
                        //adding color for dropdownmenu
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(211, 211, 211, 211)),
                        child: SizedBox(
                          //width of dropdown button
                          width: 170,
                          child: DropdownButton(
                              value: amenity,
                              isExpanded: true,
                              dropdownColor: Colors.grey,
                              items: amenities.map((String item) {
                                return DropdownMenuItem(
                                    alignment: Alignment.center,
                                    value: item,
                                    child: Text(item));
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  amenity = newValue!;
                                });
                              }),
                        ),
                      )
                    ]),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("SEARCH BY: "),
                  SizedBox(
                    width: 170,
                    height: 40,
                    child: TextField(
                        onChanged: (value) {
                          setState(() {
                            keyword = value;
                          });
                        },
                        //controller: keyword,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(211, 211, 211, 211),
                            border: InputBorder.none,
                            hintText: 'ENTER KEYWORD...')),
                  ),
                ],
              ),
              //SEARCH
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return ShowPlaces(
                            //pass amenity, city and keyword values to ShowPlaces()
                            selectedCategory: amenity,
                            selectedCity: city,
                            keyword: keyword,
                          );
                        }));
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    child: const Text("SEARCH")),
              )
            ]),
          ),
        ));
  }
}
