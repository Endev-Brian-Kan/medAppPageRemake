import 'package:flutter/material.dart';

// Hi there, you might want to seek professional medical opinion.
// Hi there, you seem to be alright but just to play it safe, please check back in a week.
// Hi there, everything seems fine.

class Blurb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Hi there, you might want to seek professional medical opinion.",
        style: TextStyle(
          fontSize: 15,
          color: Colors.lightBlue[900],
        ),
      ),
    );
  }
}
