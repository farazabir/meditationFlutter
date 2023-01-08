import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation/screen/musicScreen.dart';

class Topics extends StatelessWidget {
  const Topics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
        height: 180,
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22,vertical: 10),
              child: Text(
                "Mood",
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xfffFF9E8F))),
              ),
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>MusicScreen() ,
              ),
            );
                      },
                      child: Center(
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xfffA260E5),
                              image: DecorationImage(
                                  image: AssetImage("images/calm.png"))),
                          child: Padding(
                            padding: EdgeInsets.only(top: 90),
                            child: Center(
                              child: Text(
                                "Calm",
                                style: GoogleFonts.raleway(
                                    textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Center(
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff00A4FB),
                            image: DecorationImage(
                                image: AssetImage("images/yoga.png"))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 90),
                          child: Center(
                            child: Text(
                              "Yoga",
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Center(
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfffFB72BF6),
                            image: DecorationImage(
                                image: AssetImage("images/focus.png"))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 90),
                          child: Center(
                            child: Text(
                              "Focus",
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Center(
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfffF98FA6),
                            image: DecorationImage(
                                image: AssetImage("images/mindful.png"))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 90),
                          child: Center(
                            child: Text(
                              "MindFul",
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Center(
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff72C2E9),
                            image: DecorationImage(
                           
                           
                                image: AssetImage("images/healing.png"))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 90),
                          child: Center(
                            child: Text(
                              "Healing",
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Center(
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfffCAE4C0),
                            image: DecorationImage(
                                image: AssetImage("images/sleep.png"))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 90),
                          child: Center(
                            child: Text(
                              "Sleep",
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
