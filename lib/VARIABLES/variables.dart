import 'package:flutter/cupertino.dart';

abstract class CallMethods {
  Column showHospitals();
  Column showHotels();
  Column showRestaurants();
  Column showMalls();
  Column showSportComplexes();
  Center doNothing();
}


// callDetailPage(){
//   Navigator.of(context)
//       .push(MaterialPageRoute(builder: (BuildContext context) {
//     return ShowInfo(hospitalName: hospital['name']);
//   })
//   )
