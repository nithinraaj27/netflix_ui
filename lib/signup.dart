import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix/main.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  bool isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1512070800540-0d4192faa057?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG5ldGZsaXglMjBiYWNrcm91bmR8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                height: 800,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black45,
                          Colors.black54,
                        ]
                    )
                ),
                margin: EdgeInsets.symmetric(vertical: 100,horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 35,top: 50),
                      child: Image.asset('assets/symble.png',height: 80,width: 500,),
                    ),
                    Container(
                      margin: EdgeInsets.all(25),
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(FontAwesomeIcons.globe,color: Colors.red,),
                            hintText: "Email or Phone No",
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                              letterSpacing: 1
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.black,width: 5)
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.black,width: 5)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.black,width: 5)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width-100,
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2,color: Colors.red),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 50,
                                spreadRadius: 3,
                                color: Colors.red
                            )
                          ]
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text("SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              letterSpacing: 3
                          ),),
                      ),
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isCheckbox = true;
                        });
                      },
                      onDoubleTap: (){
                        setState(() {
                          isCheckbox = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 80),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Icon(
                              FontAwesomeIcons.checkSquare,
                              size: 20,
                              color:isCheckbox ? Colors.orangeAccent: Colors.white,),
                            SizedBox(width: 20,),
                            Text("Remenber my login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Text("Already Have an Account? ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                letterSpacing: 1
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                            },
                            child: Text("Sign In",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  letterSpacing: 1,
                                  decorationColor: Colors.red,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1.5
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
