
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/login_page.dart';
import 'package:ui_design/register_page.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            // child: Image.asset(
            //   "Images/home.jpg",
            //   height: double.infinity,
            //   width: double.infinity,
            //   fit: BoxFit.fitHeight,
            //   color: Colors.red.withOpacity(1.0),
            //   colorBlendMode: BlendMode.softLight,

            child:DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.cover,

                  image: AssetImage("Images/download1.jpg"),
                  colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.9),BlendMode.srcOver),
                  ),
               ),
                ),
              ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height:100,
                    width: 100,
                    margin: EdgeInsets.symmetric(vertical: 150.0,horizontal: 16.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        //fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.red.withOpacity(1.0),BlendMode.dstIn),
                        image: AssetImage("Images/12.png"),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text("SEWAA",style: TextStyle(
                            color: Colors.white,fontSize: 60,letterSpacing: 2.5,
                            fontFamily:'Roboto',fontWeight: FontWeight.w700),),
                        Text(" Rental Made Easy",style: TextStyle(
                            color: Colors.white.withOpacity(0.6),fontSize: 24,
                            fontWeight: FontWeight.normal
                        ),),
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                child: Column(
                  children: [
                    MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                    },
                      color: Colors.white,
                      child: Text("Register",style: TextStyle(
                          color: Colors.red,fontSize: 18,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w700)),
                      minWidth: 300,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    ),
                    SizedBox(height: 12.0,),
                    MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                      color: Colors.white,
                      child: Text("Login",style: TextStyle(
                          color: Colors.red,fontSize: 18,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w700)),
                      minWidth: 300,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 280.0,),
              Container(
                alignment: Alignment.bottomCenter,
                child: Text("Sewaa Apps v1.0",style: TextStyle(color: Colors.white70),),
              ),
            ],
          ) ,
        ],

      ),
    );
  }
}
