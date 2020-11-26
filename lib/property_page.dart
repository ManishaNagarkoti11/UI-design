import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class PropertyScreen extends StatefulWidget {
  @override
  _PropertyScreenState createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title:Text("Property",style:TextStyle(fontSize:35,letterSpacing: 2.0)
    ),
    centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        toolbarHeight: 200,
          actions: <Widget>[
          Padding(
          padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.add_circle,
            size: 60.0,
          ),
        )
    ),
    ],
    ),
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white
      ),

          Container(
            margin: EdgeInsets.symmetric(vertical:0.0,horizontal: 30.0),
            child:Column(
              children: [
                Container(
                  
                ),
                Image(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGpoB2DhDKln0qpw0W6Yg0X_ghmZF8ZTgaGA&usqp=CAU"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
