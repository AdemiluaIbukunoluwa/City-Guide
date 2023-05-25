import 'package:city_guide/Cities/houston.dart';
import 'package:city_guide/Cities/new_york.dart';
import 'package:city_guide/Cities/seattle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Cities/boston.dart';
import 'Cities/miami.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late String selectedCategory;
  String city = "New York";
  String amenity = "Hospitals";
  var amenities = ["Hospitals", "Hotels", "Restaurants", "Shopping Malls", "Sports Complex"];
  var cities = ["New York", "Miami", "Boston", "Houston", "Seattle"];
  final keyword = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    keyword.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("City Guide"), backgroundColor: Colors.black),
        body: Column(
            children: <Widget>[
              //CITIES
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: Row(children: [
                  const Text("CITIES"),
                  Container(
                    decoration: const BoxDecoration(color: Color.fromARGB(211,211,211,211)),
                    child: DropdownButton(
                        value: city,
                        dropdownColor: Colors.grey,
                        items: cities.map((String item) {
                          return DropdownMenuItem(value: item, child: Text(item));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            city = newValue!;
                          });
                        }),
                  )
                ]),
              ),
              //CATEGORIES
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: Row(children: [
                  //Text beside dropdown(categories)
                  const Text("CATEGORIES"),
                  Container(
                    //adding color for dropdownmenu
                    decoration: const BoxDecoration(color: Color.fromARGB(211,211,211,211)),
                    child: DropdownButton(
                        value: amenity,
                        dropdownColor: Colors.grey,
                        items: amenities.map((String item) {
                          return DropdownMenuItem(
                              value: item, child: Text(item));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            amenity = newValue!;
                          });
                        }),
                  )
                ]),
              ),

              Row(
                children:  [
                  const Text("SEARCH BY"),
                  SizedBox(
                    width: 200.0,
                    height: 40,
                    child: TextField(
                      controller: keyword,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(211,211,211,211),
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
                        switch(city){
                          case "New York":
                            Navigator.of(context).push(MaterialPageRoute(builder:
                                (BuildContext context){
                                  return NewYork(selectedCategory: amenity, selectedCity: city);
                            }));
                            break;
                          case "Miami":
                            Navigator.of(context).push(MaterialPageRoute(builder:
                                (BuildContext context){
                              return const Miami();
                            }));
                            break;
                          case "Boston":
                            Navigator.of(context).push(MaterialPageRoute(builder:
                                (BuildContext context){
                              return const Boston();
                            }));
                            break;
                          case "Houston":
                            Navigator.of(context).push(MaterialPageRoute(builder:
                                (BuildContext context){
                              return const Houston();
                            }));
                            break;
                          case "Seattle":
                            Navigator.of(context).push(MaterialPageRoute(builder:
                                (BuildContext context){
                              return const Seattle();
                            }));
                            break;
                        }
                      });
                    }, style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black) ),
                    child: const Text("SEARCH")),
              )
            ]));
  }
}