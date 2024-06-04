import 'package:flutter/material.dart';
import 'package:valentine_app/questions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  stops: [0.4, 0.7],
                  colors: [Color(0xffB161D0), Color(0xff3793FF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(bounds);
              },
              child: Text(
                "Happy valentines💕",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onDoubleTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Questions();
                    },
                  ),
                );
              },
              child: Container(
                width: 65.0,
                height: 65.0,
                child: Image.network(
                    "https://i.pinimg.com/originals/58/ce/fa/58cefa145ba5b9400c19303ce0736f32.gif"),
              ),
            ),
            Container(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
