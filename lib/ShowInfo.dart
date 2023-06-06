import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//final page => displays name, image and address of a particular location
class ShowInfo extends StatefulWidget {
   String? name;
   String? imageurl;
   String? address;
   String? mobile;
   ShowInfo({Key? key, this.name, this.imageurl, this.address, this.mobile})
       : super(key: key);
  @override
  State<ShowInfo> createState() => _ShowInfoState();
}

class _ShowInfoState extends State<ShowInfo> {
  @override
  Widget build(BuildContext context) {
    String name = widget.name.toString();
    String imageurl = widget.imageurl.toString();
    String address = widget.address.toString();
    String mobile = widget.mobile.toString();
    return Scaffold(
      appBar: AppBar(title: Text(name),
          toolbarHeight: 100, backgroundColor: Colors.white,
          foregroundColor: Colors.black),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image(image: AssetImage(imageurl),
            alignment: Alignment.center,width: double.infinity,
              height: 250,fit: BoxFit.fill,),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 50),
            color: Color.fromARGB(211, 211, 211, 211),
            width: double.infinity,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin: EdgeInsets.only(bottom: 20),
                    child: Text(address, style: TextStyle(fontSize: 40))),
                Row(
                  children: [Icon(Icons.phone),
                    Text(mobile, style: TextStyle(fontSize: 20)),
                  ],
                )
              ]
            ),
          )
          ],
        ),
      ),
    );
  }
}