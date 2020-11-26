
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}
Map details ={'firstname':"",'lastname':"",'country':"",'email':"",'phone':"",'password':""};
String countryname;
final _formKey = GlobalKey<FormState>();
class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.symmetric(vertical:12.0,horizontal:20.0 ),
      child:
      Text("Register",style: TextStyle(color: Colors.red,fontSize: 32.0,
      fontFamily:'Source_Sans_Pro',
      fontWeight: FontWeight.w900),),
      ),
            Container(
              margin: EdgeInsets.all(12.0),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formKey,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Text("   FIRST NAME :",style: TextStyle(fontSize:24,fontFamily:'Source_Sans_Pro',
                                  fontWeight: FontWeight.w600,),),
                              ),
                              SizedBox(height: 8.0,),
                              Expanded(
                                child: Text("    LAST NAME :",style: TextStyle(fontSize:24,fontFamily:'Source_Sans_Pro',
                                  fontWeight: FontWeight.w600,),),
                              ),

                            ],
                          ),
                        ),
                   SizedBox(height: 12,),
                   Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child:TextFormField(decoration: InputDecoration
                            (hintText: "Enter your first name ",hintStyle: TextStyle(color: Colors.grey,
                            fontFamily:'Source_Sans_Pro',fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                            //suffixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                             fillColor: Colors.grey.shade100,
                             filled: true,
                              contentPadding: EdgeInsets.all(12.0),
                              ),

                            keyboardType: TextInputType.text,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (String value){
                            print(value.length);
                            if(value.length<2){
                              return "Invalid";
                            }
                            return null;
                            },

                            onSaved: (String value){
                              details['firstname']=value;
                            },
                             ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child:TextFormField(

                            decoration: InputDecoration
                            (hintText: "Enter your last name ",hintStyle: TextStyle(color: Colors.grey,
                              fontFamily:'Source_Sans_Pro',fontSize: 16.0,
                              fontWeight: FontWeight.w700),
                            //suffixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            contentPadding: EdgeInsets.all(12.0),
                          ),
                            keyboardType: TextInputType.text,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator:(String value){
                                if(value.length<2){
                                  print(value.length);
                                  return "Invalid";
                                }
                                return null;
                            } ,
                            onSaved: (String value){
                              details['lastname']=value;
                            },
                          ),
                        ),
                      ],
                    ),
                    ),
                      SizedBox(height: 12.0,),
                      Text("COUNTRY :",style: TextStyle(fontSize: 24,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w600),),
                      SizedBox(height: 8.0,),
                      DropdownButtonFormField<String>(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                          items:[
                        DropdownMenuItem<String>(child:Text("All"),value:"1"),
                            DropdownMenuItem<String>(child:Text("Nepal"),value:"2"),
                            DropdownMenuItem<String>(child:Text("India"),value:"3"),
                            DropdownMenuItem<String>(child:Text("USA"),value:"4"),
                            DropdownMenuItem<String>(child:Text("NewYork"),value:"5"),
                            DropdownMenuItem<String>(child:Text("Canada"),value:"6"),
                            DropdownMenuItem<String>(child:Text("Spain"),value:"7"),
                      ],
                        onChanged:(value){
                         setState(() {
                         countryname=value;
                          });
                         },
                            value: countryname,
                            validator: (String value){
                            print(value.length);
                            if(value=="1"|| value=="null"){
                              return "Select one country name";
                            }
                            return null;
                            },
                        decoration: InputDecoration(hintText: 'Nepal',hintStyle: TextStyle(color: Colors.grey,
                            fontFamily:'Source_Sans_Pro',
                            fontWeight: FontWeight.w700),
                          //suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          contentPadding: EdgeInsets.all(12.0),
                        ),
                        onSaved: (String value){
                          details['country']=value;

                        },

                      ),
                      SizedBox(height:12,),
                      Text("EMAIL:",style: TextStyle(fontSize: 24,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w600),),
                      SizedBox(height: 8.0,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(hintText: 'david@sewaa.com',hintStyle: TextStyle(color: Colors.grey,
                            fontFamily:'Source_Sans_Pro',
                            fontWeight: FontWeight.w700),
                          //suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          contentPadding: EdgeInsets.all(12.0),
                        ),
                        validator: (String value){
                          if(value.isEmpty){
                            return "Email is required";
                          }
                          if(!RegExp(r"[a-zA-Z{8,20}0-9.%$#@^!&*()_+{}[]+.@gmail+.com").hasMatch(value)){
                            return "Invalid email";
                          }
                          return null;
                        },
                        onSaved: (String value){
                          details['email']=value;
                        },
                      ),
                      SizedBox(height:12,),
                      Text("MOBILE :",style: TextStyle(fontSize: 24,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w600),),
                      SizedBox(height: 8.0,),
                      TextFormField(
                        autovalidateMode:AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: '644-631-9422',hintStyle: TextStyle(color: Colors.grey,
                            fontFamily:'Source_Sans_Pro',
                            fontWeight: FontWeight.w700),
                          //suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          contentPadding: EdgeInsets.all(12.0),
                        ),
                        validator: (String value){
                          if(value.length!=10){
                            return "Enter valid number";
                          }
                          return null;
                        },
                        onSaved: (String value){
                          details['phone']=value;
                        },
                      ),
                      SizedBox(height: 12,),
                      Text("PASSWORD :",style: TextStyle(fontSize: 24,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w600),),
                      SizedBox(height: 8.0,),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: true,
                        decoration: InputDecoration(hintText: 'Enter password',hintStyle: TextStyle(color: Colors.grey,
                            fontFamily:'Source_Sans_Pro',
                            fontWeight: FontWeight.w700),
                          //suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          contentPadding: EdgeInsets.all(12.0),
                        ),
                        validator: (String value){
                          if (!RegExp(r"(?=.*[a-z]{1,})(?=.*[A-Z]{1,})(?=.*[!@#$%^&*().]{1,})").hasMatch(value))
                            {
                              return "Please insert strong password";
                            }
                          print(value.length);
                           if(value.length<8){
                             return"Invalid";
                           }
                          return null;
                        },
                        onSaved: (String value){
                          details['password']=value;
                        },
                      ),
                      SizedBox(height:50,),
                      SizedBox(
                        width: 400,
                        height: 54,
                        child: RaisedButton(onPressed: (){
                          if(_formKey.currentState.validate()){
                            _formKey.currentState.save();

                            print(details);
                          }else{
                            print("Invalid");
                          }
                        },
                          child: Text("REGISTER",style: TextStyle(fontSize:24,fontFamily:'Source_Sans_Pro',
                              fontWeight: FontWeight.w700,color: Colors.white),),
                          color: Colors.red,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                        ),
                      ),
                    ],
                  ),),
            ),
            SizedBox(height: 12,),
            Container(
              // height: 40,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: "By Sign up, you agree our ",
                    style:TextStyle(color: Colors.grey,  fontFamily:'Source_Sans_Pro',
                        fontWeight: FontWeight.w600,fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(text: 'Terms and Conditions', style: TextStyle(color:Colors.red,fontFamily:'Source_Sans_Pro',
                          fontWeight: FontWeight.w600,fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

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