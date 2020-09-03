import 'package:flutter/material.dart';

// Melanocytic Nevi
// Melanoma
// Benign Keratosis
// Dermatofibroma

class Analysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(
      //     left: 30, top: 100, right: 30, bottom: 50),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            // changes position of shadow
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Text("<Insert Blue Bar Graphic>"),
          Text(
            "Melanocytic Nevi 100.0%",
            style: TextStyle(
              fontSize: 15,
              color: Colors.lightBlue[900],
            ),
          ),
        ],
      ),
    );
  }
}
