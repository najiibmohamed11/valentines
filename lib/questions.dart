import 'package:flutter/material.dart';
import 'package:valentine_app/lastpage.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  bool isHovering = false;
  double buttonLeftOffset = 0.0; // Initial offset for smoother animation
  double topside = 0.0; // Initial offset for smoother animation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250.0,
              height: 250.0,
              child: Image.asset("images/gift.gif"),
            ),
            Text(
              "gift noocee isiinee",
              style: const TextStyle(
                fontSize: 30.0,
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
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "box gift 💌",
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Lastpage();
                      }),
                    );
                  },
                  color: Color(0xffB161D0),
                  child: Text(
                    "waxaa dooratid\n ku siinaa 🎁",
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
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
