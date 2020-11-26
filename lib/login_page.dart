import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white
          ),

          Container(
            margin: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical:150.0,horizontal:50.0 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TextStyle(color: Colors.red,fontSize: 32.0,
                      fontFamily:'Source_Sans_Pro',
                      fontWeight: FontWeight.w900),),
                  SizedBox(height: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("YOUR EMAIL :",style: TextStyle(fontSize: 24,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w600),),
                     SizedBox(height: 8.0,),
                     TextField(
                       decoration: InputDecoration(hintText: 'Enter your email',helperStyle: TextStyle(color: Colors.white70,
                           fontFamily:'Source_Sans_Pro',
                           fontWeight: FontWeight.w100),
                       //suffixIcon: Icon(Icons.email),
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                         fillColor: Colors.grey.shade100,
                         filled: true,
                       ),
                     ),
                      SizedBox(height: 25,),
                      Text("PASSWORD :",style: TextStyle(fontSize: 24,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w600),),
                      SizedBox(height: 8.0,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: 'Enter password',helperStyle: TextStyle(color: Colors.white70,
                            fontFamily:'Source_Sans_Pro',
                            fontWeight: FontWeight.w100),
                          //suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                        ),
                      ),
                      SizedBox(height: 25,),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: RaisedButton(onPressed: (){},
                        child: Text("Login",style: TextStyle(fontSize:24,fontFamily:'Source_Sans_Pro',
                            fontWeight: FontWeight.w700,color: Colors.white),),
                          color: Colors.red,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(38.0)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Can't login ? ",
                            style:TextStyle(color: Colors.grey,  fontFamily:'Source_Sans_Pro',
                                fontWeight: FontWeight.w600,fontSize: 20),
                            children: <TextSpan>[
                              TextSpan(text: 'Forget Password', style: TextStyle(color:Colors.red,fontFamily:'Source_Sans_Pro',
                            fontWeight: FontWeight.w600,fontSize: 20)),
                            ],
                          ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar:
       Container(
         height: 40,
         decoration: BoxDecoration(
             border: Border.all(color: Colors.grey,),
         ),
       child: Center(
         child: RichText(
           text: TextSpan(
           text: "Don't have an account?",
             style:TextStyle(color: Colors.grey,  fontFamily:'Source_Sans_Pro',
                 fontWeight: FontWeight.w600,fontSize: 20),
             children: <TextSpan>[
               TextSpan(text: 'Register', style: TextStyle(color:Colors.red,fontFamily:'Source_Sans_Pro',
                   fontWeight: FontWeight.w600,fontSize: 20)),
             ],
           ),
         ),
       ),
         ),



    );
  }
}
