import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void randomizeBall() {
    var randomNum = new Random();
    ballNumber = randomNum.nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: FlatButton(
                padding: EdgeInsets.all(35.0),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    randomizeBall();
                  });
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'Ask a question and tap the 🎱',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.slabo13px(
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            )
          ],
        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 159, 230, 0.9),
      appBar: AppBar(
        title: Center(child: Text('Ask me anything')),
        backgroundColor: Colors.indigo[600],
      ),
      body: Ball(),
    );
  }
}
