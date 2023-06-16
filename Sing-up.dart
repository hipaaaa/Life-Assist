import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fyp2/Screens/Home-Page/home_page.dart';
import 'package:fyp2/Screens/LOGIN-PAGE/login_page.dart';
import 'package:fyp2/Screens/Welcome/Welcome_screen.dart';
import 'package:fyp2/constant.dart';
import 'components/square_tile.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  bool _isEmailValid = true;

  void _validateEmail(String value) {
    setState(() {
      _isEmailValid = RegExp(r'^[\w-]+(\.[\w-]+)*@gmail\.com$').hasMatch(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Hello There,',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Create An Account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 45,
                fontFamily: 'Times New Roman',
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: DarkGreen,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ],
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.name,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                LengthLimitingTextInputFormatter(7),
              ],
              style: TextStyle(
                color: Colors.white, // Text color of the input text
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 17),
                prefixIcon: Icon(
                  Icons.person_4_sharp,
                  color: Colors.white,
                  size: 27,
                ),
                hintText: 'First Name',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: DarkGreen,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.name,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+')),
                LengthLimitingTextInputFormatter(7),
              ],
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 16),
                prefixIcon: Icon(
                  Icons.person_4_sharp,
                  color: Colors.white,
                  size: 27,
                ),
                hintText: 'Last Name',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: DarkGreen,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 60,
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white, //Text color of the input text
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 18),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 27,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                errorText: !_isEmailValid ? 'Enter a valid email' : null,
              ),
              onChanged: _validateEmail,
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: DarkGreen,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(
                color: Colors.white, //Text color of the input text
              ),
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 17),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 27,
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(height: 50),
          Container(
            height: 60,
            width: 3000,
            padding: EdgeInsets.only(top: 10, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF8EA571),
                  Color(0xFFF9DCB9F),
                ],
                begin: Alignment.center,
                end: Alignment.center,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  if (_isEmailValid) {
                    print('Heading to Home Page');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                },
                child: Center(
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context as BuildContext,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,

                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
