
import 'dart:js';

import 'package:flutter/material.dart';
//import 'dart:js';
import 'package:flutter/services.dart';
import 'package:fyp2/constant.dart';

import '../Home-Page/home_page.dart';
//import 'package:firebase_core.dart';
//import 'Signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

Widget buildlEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      SizedBox(height: 20),
      Container(
        alignment: Alignment.centerLeft,
        decoration:BoxDecoration(
            color:DarkGreen,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color:Colors.white,
                  blurRadius: 6,
                  offset: Offset(0,2)
              )
            ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white ,//Text color of the input text
          ),

          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:18),
            prefixIcon: Icon(
              Icons.email,
              color: Colors.white,
              size: 27,

            ),

            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.white,

            ),

          ),
        ),
      )
    ],
  );
}//This widget will let user to enter their email address
Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      SizedBox(height: 20),
      Container(
        alignment: Alignment.centerLeft,
        decoration:BoxDecoration(
            color:DarkGreen,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color:Colors.white,
                  blurRadius: 6,
                  offset: Offset(0,2)
              )
            ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(
            color: Colors.white ,//Text color of the input text
          ),
          obscureText: true,

          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:17),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.white,
              size: 27,

            ),
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Colors.white,
              //SizedBox(width:40.0),
            ),
            suffixIcon: Icon(
              Icons.visibility_off,
              color: Colors.white,

            ),

          ),
        ),

      )
    ],
  );
}//this widget will ask your to input the valid password of their email
Widget buildforgotPassBtn(){
  SizedBox(height: 10);
  return Container(

    alignment: Alignment.centerRight,
    padding: EdgeInsets.only(top: 10,left:20,),

    child: (
        InkWell(
          child:Text(
            'Forgot Password?',
            style: TextStyle(
              color:Colors.black87,
              // fontWeight: FontWeight.bold,
              fontFamily: 'Times New ROMANS',
              decoration: TextDecoration.underline,
              fontSize: 15,
              fontWeight: FontWeight.bold,

              //under lining the forgot password text

            ),

          ) ,
        )
    ),

  );
}//This widget helps users who forgot password to be able to fix the error of wrong password
Widget buildimage() {
  SizedBox(height: 10,);
  return Container(
      alignment: Alignment.center,
      width: 900.00,
      height: 400.00,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: ExactAssetImage('lib/images/undraw_My_password_re_ydq7.png'),
          fit: BoxFit.fitHeight,
        ),
      ));

}


Widget buildsignupButtom(){
  SizedBox(height: 10,);
  return Container(
    height: 45,
    width: 600,
    child: Material(
      borderRadius: BorderRadius.circular(20),
      shadowColor: Colors.black87,
      color: Colors.green.shade300,
      elevation: 7,

      child: InkWell(
        onTap: () {
          print('Heading to Home Page');
          Navigator.push(
              context as BuildContext ,
              MaterialPageRoute(builder: (context)=> HomePage()),);
        },
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          ),

        ),
      ),

    ),

  );

}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//Background color of the Sign up page
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,

        child: GestureDetector(
          child: Stack(
            children: <Widget> [
              Container(//this sets the height of the page
                height: double.infinity,//
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end:Alignment.bottomCenter,
                    colors:[
                      Color(0xFFFFFF),
                      Color(0XFFFFFF),
                      Color(0XFFFFFF),
                      Color(0XFFFFFF)
                    ],
                  ),
                ),

                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hello There,',
                        style: TextStyle(fontWeight: FontWeight.bold, color:Colors.black,fontSize: 35,
                        )),
                    Text('Welcome Back',style: TextStyle(fontWeight:FontWeight.bold,color:Colors.black,fontSize: 45, fontFamily: 'Times New Roman'),),
                    SizedBox(height: 40),
                    buildlEmail(),
                    buildPassword(),
                    buildforgotPassBtn(),
                    buildimage(),
                    buildsignupButtom(),
                    // buildReturn(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
