import 'package:flutter/material.dart';

class Lastpage extends StatefulWidget {
  const Lastpage({super.key});

  @override
  State<Lastpage> createState() => _LastpageState();
}

class _LastpageState extends State<Lastpage> {
  bool visiblitycondition = false;
  double buttonLeftOffset = 0.0; // Initial offset for smoother animation
  double topside = 0.0; // Initial offset for smoother animation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/kiss-me.gif"),
                Text(
                  "🤗",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle the buttonLeftOffset when tapped
                          if (buttonLeftOffset == 0.0 || topside == 200.0) {
                            buttonLeftOffset =
                                200.0; // Set to a different visible position
                            topside = 0.0;
                          } else {
                            buttonLeftOffset = 0.0;
                            topside = 200.0;
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: EdgeInsets.only(
                            top: topside,
                            bottom:
                                buttonLeftOffset), // Apply offset to left margin
                        child: Container(
                          color: Color(0xffB161D0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "NO😡",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          topside = 0.0;
                          buttonLeftOffset = 0.0;

                          visiblitycondition = true;
                        });
                      },
                      color: Color(0xff3793FF),
                      child: Text(
                        "YES😍",
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Visibility(
              visible: visiblitycondition,
              child: Positioned(
                  bottom: 20.0,
                  left: 80.0,
                  child: Image.asset("images/celebration.gif")),
            )
          ],
        ),
      ),
    );
  }
}
