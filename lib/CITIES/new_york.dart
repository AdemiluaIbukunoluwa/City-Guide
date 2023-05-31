// import 'package:city_guide/main_screen.dart' as mainscreen;
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:city_guide/VARIABLES/variables-NewYork.dart'
//     as new_york_variables;
//
// import '../DetailsScreen.dart';
// import '../VARIABLES/variables.dart';
//
// class NewYork extends StatefulWidget {
//   final String selectedCategory;
//   final String selectedCity;
//   const NewYork(
//       {Key? key, required this.selectedCategory, required this.selectedCity})
//       : super(key: key);
//
//   @override
//   State<NewYork> createState() => _NewYorkState();
// }
//
// class _NewYorkState extends State<NewYork> implements CallMethods {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: Text("${widget.selectedCategory} around you"),
//             backgroundColor: Colors.black),
//         body:
//             //nested ternary operator
//             //if the selected category is Hospitals, call function ShowHospitals
//             Column(
//           children: [
//             widget.selectedCategory == "Hospitals"
//                 ? showHospitals()
//                 : widget.selectedCategory == "Hotels"
//                     ? showHotels()
//                     : widget.selectedCategory == "Restaurants"
//                         ? showRestaurants()
//                         : widget.selectedCategory == "Shopping Malls"
//                             ? showMalls()
//                             : widget.selectedCategory == "Sports Complex"
//                                 ? showSportComplexes()
//                                 :
//                                 //if nothing is selected(not really possible), call doNothing()
//                                 doNothing(),
//           ],
//         ));
//   }
//
//   @override
//   showHospitals() {
//     //mapping through each element in the 'hospitals in new york object
//     return Column(
//       children: new_york_variables.hospitalsInNewYork.map((var hospital) {
//         return GestureDetector(
//           child: Container(
//             margin: const EdgeInsets.only(bottom: 20, top: 40),
//             child: Row(
//               children: [
//                 const Icon(Icons.local_hospital),
//                 const SizedBox(width: 10),
//                 Text(hospital['name']!)
//               ],
//             ),
//           ),
//           onTap: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (BuildContext context) {
//               return ShowInfo(
//                 name: hospital['name'],
//                 address: hospital['address'],
//                 imageurl: hospital['image'],
//                 mobile: hospital["phone"],
//               );
//             }));
//           },
//         );
//       }).toList(),
//     );
//   }
//
//   @override
//   showHotels() {
//     return Column(
//       children: new_york_variables.hotelsInNewYork.map((var hotel) {
//         return GestureDetector(
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 20, top: 40),
//               child: Row(
//                 children: [
//                   const Icon(Icons.hotel),
//                   const SizedBox(width: 10),
//                   Text(hotel['name']!)
//                 ],
//               ),
//             ),
//             onTap: () {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (BuildContext context) {
//                 return ShowInfo(
//                   name: hotel['name'],
//                   address: hotel['address'],
//                   imageurl: hotel['image'],
//                   mobile: hotel["phone"],
//                 );
//               }));
//             });
//       }).toList(),
//     );
//   }
//
//   @override
//   showRestaurants() {
//     return Column(
//       children: new_york_variables.restaurantsInNewYork.map((var restaurant) {
//         return GestureDetector(
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 20, top: 40),
//               child: Row(
//                 children: [
//                   const Icon(Icons.restaurant_menu),
//                   const SizedBox(width: 10),
//                   Text(restaurant['name']!)
//                 ],
//               ),
//             ),
//             onTap: () {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (BuildContext context) {
//                 return ShowInfo(
//                   name: restaurant['name'],
//                   address: restaurant['address'],
//                   imageurl: restaurant['image'],
//                   mobile: restaurant["phone"],
//                 );
//               }));
//             });
//       }).toList(),
//     );
//   }
//
//   @override
//   showMalls() {
//     return Column(
//       children: new_york_variables.shoppingMallsInNewYork.map((var mall) {
//         return GestureDetector(
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 20, top: 40),
//               child: Row(
//                 children: [
//                   const Icon(Icons.local_mall_rounded),
//                   const SizedBox(width: 10),
//                   Text(mall['name']!)
//                 ],
//               ),
//             ),
//             onTap: () {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (BuildContext context) {
//                 return ShowInfo(
//                   name: mall['name'],
//                   address: mall['address'],
//                   imageurl: mall['image'],
//                   mobile: mall["phone"],
//                 );
//               }));
//             });
//       }).toList(),
//     );
//   }
//
//   @override
//   showSportComplexes() {
//     return Column(
//       children: new_york_variables.sportComplexesInNewYork.map((var complex) {
//         return GestureDetector(
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 10, top: 40),
//               child: Row(
//                 children: [
//                   const Icon(Icons.sports_baseball_rounded),
//                   const SizedBox(width: 10),
//                   Text(complex['name']!)
//                 ],
//               ),
//             ),
//             onTap: () {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (BuildContext context) {
//                 return ShowInfo(
//                   name: complex['name'],
//                   address: complex['address'],
//                   imageurl: complex['image'],
//                   mobile: complex["phone"],
//                 );
//               }));
//             });
//       }).toList(),
//     );
//   }
//
//   @override
//   doNothing() {
//     return const Center(
//         child: Text(
//       "Selection not available",
//       style: TextStyle(color: Colors.red),
//     ));
//   }
// }
