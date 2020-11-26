import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class ConformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(12,100,12,12),
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Confirmation",style: TextStyle(letterSpacing: 2.5,fontSize: 36,color: Colors.red,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            Text("Code message has been sent to your phone number,\n and submit OTP code below to verify your account",
            style: TextStyle(color: Colors.grey,fontSize: 16),),
            SizedBox(height: 25,),
            Text("OTP CODE :", style: TextStyle(color: Colors.black54,fontSize: 22),),
            SizedBox(height: 12.0,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: '6441-6016-94220',
                hintStyle: TextStyle(color: Colors.grey,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                fillColor: Colors.grey.shade200,
                filled: true,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
            SizedBox(height:30,),
            SizedBox(
              width: 500,
              height: 50,
              child: RaisedButton(onPressed: (){},
                child: Text("Submit",style: TextStyle(fontSize:20,color: Colors.white),),
                color: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
