import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation/widgets/DateTimeScreen.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 200,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         color: Color(0xfff98C4EC).withOpacity(.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15),
              child: Text("Welcome,", 
              style: GoogleFonts.limelight(
                textStyle: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfffFFFFFF)
                ),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("John Doe", 
              style: GoogleFonts.limelight(
                textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfffFFFFFF)
                ),
              ),
              ),
            ),
            //show current date and time
            Date_Time(),
          ],
        ),
      );
   
  }
}