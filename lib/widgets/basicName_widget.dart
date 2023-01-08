import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class BasicNames extends StatefulWidget {
  const BasicNames({super.key});

  @override
  State<BasicNames> createState() => _BasicNamesState();
}

class _BasicNamesState extends State<BasicNames> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Meditation Basics",
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xfffFF9E8F),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/unsplash-6.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Relaxing Music",
                          style: GoogleFonts.adamina(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#272f40"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/unsplash-4.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Stress",
                                style: GoogleFonts.adamina(
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor("#272f40"),
                                      wordSpacing: 1),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "And",
                                style: GoogleFonts.adamina(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#272f40"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Anxiety",
                                style: GoogleFonts.adamina(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#272f40"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      height: 100.0,
                      width: 150.0,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/unsplash-5.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Yoga",
                          style: GoogleFonts.adamina(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#272f40"),
                            ),
                          ),
                        ),
                      ),
                      height: 100.0,
                      width: 150.0,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/unsplash-7.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Sleep Music",
                          style: GoogleFonts.adamina(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#272f40"),
                            ),
                          ),
                        ),
                      ),
                      height: 100.0,
                      width: 150.0,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/unsplash-8.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Morning",
                              style: GoogleFonts.adamina(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor("#272f40"),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Meditation",
                              style: GoogleFonts.adamina(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor("#272f40"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/unsplash-9.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Breath",
                          style: GoogleFonts.adamina(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#272f40"),
                            ),
                          ),
                        ),
                      ),
                      height: 100.0,
                      width: 150.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
