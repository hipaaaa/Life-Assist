import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,

    required this.textColor,
    required this.buttontext,
    required this.buttonColor,
    required this.handleButtonClick,


  }) : super(key: key);

  final Color textColor;
  final String buttontext;
  final Color buttonColor;
  final Function handleButtonClick;



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const SizedBox(height: 70,);
    return Container(
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(19),
        child: SizedBox(
          width: 500,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                    vertical: 15, horizontal: 15),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
            ),
            onPressed: () {
              handleButtonClick();
            },
            //alignment: Alignment.center,
            child:
            Text(
              buttontext,
              style:
              TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
  }
