import 'package:flutter/material.dart';
import 'package:fyp2/Screens/Activity%20Page1/ActivityPage.dart';
import 'package:fyp2/Screens/Home-Page/qoutes_buttom.dart';
import 'package:fyp2/Screens/Planner-Page/planner_page.dart';
import '../Contact-Page/contact.dart';
import '../components/Animated_Icons.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;

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
             top: -79 ,
             left: 0,
             child:Image.asset('lib/images/dark green2.png'),

           ),
       Container(
         margin: EdgeInsets.only(left: 20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Life Assist',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),


              SizedBox(height: 40),
              Image.asset(
                'lib/images/HomePagePicture_Center.jpeg',
                width: 600,
                height: 400,
              ),

              SizedBox(height: 10,),
                AnimatedTextContainer(
                  texts: [
                    'Be the best version of Yourself,Spritually,Physsically,and Socially',
                    'Do not settle for average',
                    'Kindness is one thing you can not give away.It always come back',
                    'When you have a dream,you have got it and never let go',
                    'Some Mornings you have to remind yourself that you got through yesterday and you will get through today too',
                    'One day,all your late night and early mornings will pay off',
                  ],
                ),
              SizedBox(height: 20,),
              Container(
                height: 49,
                width: 212,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.black87,
                  color: Colors.green.shade300,
                  elevation: 7,

                  child: GestureDetector(
                    onTap: () {
                      print('Heading to Planner Page');
                      Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> PlannerPage()));
                    },
                    child: Center(
                      child: Text(
                        'Next Page',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman',
                        ),
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                        Navigator.pop(context);
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
                        Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> HomePage()));
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
                        Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> PlannerPage()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
             // AnimatedIconsWidget(),
            ],
          ),
        ),
        ],
    ),
      ),
        );

  }
}
