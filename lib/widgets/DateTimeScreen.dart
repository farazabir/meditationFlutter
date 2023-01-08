import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import "package:flutter/material.dart";

class Date_Time extends StatefulWidget {
  const Date_Time({super.key});

  @override
  State<Date_Time> createState() => _Date_TimeState();
}

class _Date_TimeState extends State<Date_Time> {
  /// Creating a new DateTime object and assigning it to the variable now.
  DateTime now = new DateTime.now();

  var formatter = "TOday";

  /// The function takes the current date and formats it to a string
  void setDate() {
    formatter = DateFormat().add_yMMMEd().format(now);
    print(formatter);
  }

  /// The initState() function is called when the widget is inserted into the widget tree
  void initState() {
    super.initState();
    setDate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      /// Creating a column with two text widgets.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 25),
            child: Text(
              "Today",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xfff272f40),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              formatter,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xfff272f40),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
