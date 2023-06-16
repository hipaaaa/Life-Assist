import 'package:flutter/material.dart';
import 'package:fyp2/Screens/Activity%20Page1/ActivityPage.dart';
import 'package:fyp2/Screens/Contact-Page/contact.dart';
import 'package:fyp2/Screens/Home-Page/qoutes_buttom.dart';
import 'package:fyp2/Screens/Planner-Page/help.dart';
import 'package:fyp2/Screens/components/trail.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PlannerPage(),
  ));
}

class PlannerPage extends StatefulWidget {
  @override
  _PlannerPageState createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  DateTime _selectedDate = DateTime.now();

  List<Widget> _buildCalendarDays() {
    final List<Widget> days = [];

    final DateTime firstDayOfMonth = DateTime(_selectedDate.year, _selectedDate.month, 1);
    final int daysInMonth = DateTime(_selectedDate.year, _selectedDate.month + 1, 0).day;

    int weekdayOfFirstDay = firstDayOfMonth.weekday;
    if (weekdayOfFirstDay == 7) {
      weekdayOfFirstDay = 0;
    }

    for (int i = 0; i < weekdayOfFirstDay; i++) {
      days.add(Container());
    }

    for (int day = 1; day <= daysInMonth; day++) {
      final bool isToday = (day == DateTime.now().day && _selectedDate.month == DateTime.now().month);

      days.add(
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: isToday ? Colors.lightGreen : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              day.toString(),
              style: TextStyle(
                color: isToday ? Colors.white : Colors.black,
                fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      );
    }

    return days;
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
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(height: 67),
    Container(
    padding: EdgeInsets.only(left: 40, top: 40),
    child: Row(
    children: [
    Text(
    'My Day',
    style: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    ),
    ),
    Spacer(),
    IconButton(
    icon: Icon(Icons.notifications),
    onPressed: () {
    // Navigate to notifications page
    Navigator.pushNamed(context, '/notifications');
    },
    ),
    IconButton(
    icon: Icon(Icons.more_vert),
    onPressed: () {
    // Navigate to more options page
      Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => HelpPage() ));
    },
    ),
    ],
    ),
    ),
    Container(
      alignment: Alignment.center,
    margin: EdgeInsets.only(top: 10, left: 200),
    color: Colors.grey[200],
    height: 220,
    width: 400,
    child: Container(
    margin: EdgeInsets.only(top: 10, left: 60),
    child: Column(
    children: [
    Image.asset(
    'lib/images/plannerpage-pic.jpeg',
    width: 127,height: 97,
    ),
    SizedBox(height: 5),
    Text(
    'Focus On Your Day',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    ),
    ),
    SizedBox(height: 10),
    Text(
    'Get things done with Life assist,\na list that refreshes every day',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    ),
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 10),
    Container(
    margin: EdgeInsets.only(top: 36, left: 18),
    child: Container(
    width: 797,
    height: 40,
    decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(10.0),
    ),
    padding: EdgeInsets.all(8.0),
    child: Row(
    children: [
    Icon(
    Icons.add,
    color: Colors.blue,
    size: 20.0,
    ),
    SizedBox(width: 8.0),
    Expanded(
    child: TextField(
    decoration: InputDecoration(
    hintText: 'Add a Task',
    border: InputBorder.none,
    ),
    ),
    ),
    TextButton(
    onPressed: () {
    // Save button onPressed logic
    },
    child: Text(
    'Save',
    style: TextStyle(
    color: Colors.blue,
    fontSize: 14.0,
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 10,),
    Container(
    margin: EdgeInsets.only(left: 18),
    width: 797,
    height: 300,
    decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
    children: [
    SizedBox(height: 20),
    Text(
    '${_selectedDate.monthName} ${_selectedDate.year}',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 20),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Text('Sun'),
    Text('Mon'),
    Text('Tue'),
    Text('Wed'),
    Text('Thu'),
    Text('Fri'),
    Text('Sat'),
    ],
    ),
    SizedBox(height: 10),
    Expanded(
    child: GridView.count(
    crossAxisCount: 7,
    children: _buildCalendarDays(),
    ),
    ),
    ],
    ),
    ),
      SizedBox(height: 25,),
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
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> HomePage()));
              },
            ),
            IconButton(
              icon: Image.asset('lib/images/Icon content-dark.jpeg', width: 35, height: 32.69),
              onPressed: () {
                // Navigate to content page
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> PlannerPage()));
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
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> ActivityPage()));
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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('This is the Home Page'),
      ),
    );
  }
}

extension DateTimeExtension on DateTime {
  String get monthName {
    switch (this.month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }
}



