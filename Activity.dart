import 'package:flutter/material.dart';
import 'package:fyp2/Screens/Activity%20Page1/ActivityPage.dart';
import 'package:fyp2/Screens/Home-Page/qoutes_buttom.dart';
import 'package:fyp2/Screens/Planner-Page/planner_page.dart';
import 'package:fyp2/Screens/SIGNUP/sign_Up.dart';
import 'package:fyp2/Screens/components/trail.dart';
import 'package:fyp2/constant.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController _searchController = TextEditingController();
  bool _showCancelButton = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _clearSearchText() {
    setState(() {
      _searchController.clear();
      _showCancelButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
        alignment: Alignment.centerLeft,
        children: [
        Positioned(
        width: 186,
        height: 160,
        top: -75,
        left: -59,
        child: Image.asset('lib/images/light-green-circle.png'),
    ),
    Positioned(
    width: 186,
    height: 160,
    top: -79,
    left: 0,
    child: Image.asset('lib/images/dark green2.png'),
    ),
    SizedBox(height: 100,),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'Contacts',
    style: TextStyle(
    fontSize: 35.0,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    ),
    ),
    ],
    ),
    SizedBox(height: 36.0),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Expanded(
    child: Container(
    height: 40.0,
    margin: EdgeInsets.only(right: 8.0, left: 18),
    decoration: BoxDecoration(
    color: Color(0xFFC2C2C2),
    borderRadius: BorderRadius.circular(5.0),
    ),
    child: Row(
    children: [
    SizedBox(width: 8.0),
    Icon(
    Icons.search,
    color: Colors.white,
    ),
    SizedBox(width: 13.0),
    Expanded(
    child: TextField(
    controller: _searchController,
    onChanged: (value) {
    setState(() {
    _showCancelButton = value.isNotEmpty;
    });
    },
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Search Contacts',
    hintStyle: TextStyle(
    color: Colors.white,
    ),
    ),
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    ),
    SizedBox(width: 8.0),
    ],
    ),
    ),
    ),
    GestureDetector(
    onTap: _clearSearchText,
    child: Container(
    width: 80.0,
    height: 40.0,
    decoration: BoxDecoration(
    color: Color(0xFFC2C2C2),
    borderRadius: BorderRadius.circular(5.0),
    ),
    child: Center(
    child: Text(
    'Cancel',
    style: TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    ),
    ),
    ),
    ),
    ),
    ],
    ),

    SizedBox(height:32.0),
    Row(
    children: [
    Expanded(
    child: Container(
    margin: EdgeInsets.only(left: 29),
    child: Text(
    'Group Lists',
    style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    child: Text(
    'Edit',
    style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ],
    ),
    SizedBox(height: 50.0),
    Container(
    width: 226.0,
    height: 34.0,
    margin: EdgeInsets.symmetric(horizontal: 18.0),
    decoration: BoxDecoration(
    color: Color(0xFFF9DCB9F),
    borderRadius: BorderRadius.circular(5.0),
    ),
    child: Center(
    child: Text(
    'Group Lists',
    style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ),
    ),
    SizedBox(height: 60.0),
    Container(
    height: 54,
    width: 796,
    decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(8.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
    children: [
    Icon(
    Icons.search,
    color: Colors.white,
    ),
    SizedBox(width: 8.0),
    Text(
    'FAVOURITES',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 16.0,),
    Container(
      height: 54,
      width:796,
    decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(8.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
    children: [
    Icon(
    Icons.search,
    color: Colors.white,
    ),
    SizedBox(width: 8.0),
    Text(
    'FAMILY',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 16.0),
    Container(
      height: 54,
      width: 796,
    decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(8.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
    children: [
    Icon(
    Icons.search,
    color: Colors.white,
    ),
    SizedBox(width: 8.0),
    Text(
    'Colleagues',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 16.0),
    Container(
      height: 54,
      width: 796,
    decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(8.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
    children: [
    Icon(
    Icons.search,
    color: Colors.white,
    ),
    SizedBox(width: 8.0),
    Text(
    'Friends',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ],
    ),
    ),

    SizedBox(height: 50.0),
    Container(
    width: 311,
    height: 37,
    decoration: BoxDecoration(
      color: Color(0xFFF9DCB9F),
    borderRadius: BorderRadius.circular(5.0),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(
    Icons.people,
    color: Colors.white,
    ),
    SizedBox(width: 8.0),
    Text(
    'Connect with Friends',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    ),
    ),
    SizedBox(width: 8.0),
    Icon(
    Icons.share,
    color: Colors.white,
    ),
    ],
    ),
    ),
      SizedBox(height: 70,),
      Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset('lib/images/Arrow facing left side.jpeg', width: 37, height: 32.69),
              onPressed: () {
                // Navigate to previous page
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> PlannerPage()));
              },
            ),
            IconButton(
              icon: Image.asset('lib/images/Icon content-dark.jpeg', width: 35, height: 32.69),
              onPressed: () {
                // Navigate to content page
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> ActivityPage()));
              },
            ),
            IconButton(
              icon: Image.asset('lib/images/Home.jpeg', width: 40, height: 32.69),
              onPressed: () {
                // Navigate to home page
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> PlannerPage()));
              },
            ),
            IconButton(
              icon: Image.asset('lib/images/Contacts.jpeg', width: 37, height: 34.67),
              onPressed: () {
                // Navigate to content icon page
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> ContactPage()));
              },
            ),
            IconButton(
              icon: Image.asset('lib/images/Arrow acing right most.jpeg', width: 42, height: 32.69),
              onPressed: () {
                // Navigate to next page
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> SignUp()));
              },
            ),
          ],
        ),
      ),
    ],
    ),
    ],
    ),
        ),
    );
  }
}


