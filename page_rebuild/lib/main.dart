import 'package:flutter/material.dart';
import 'package:page_rebuild/analysis.dart';
import 'package:page_rebuild/summary.dart';
import 'package:page_rebuild/verbalBlurb.dart';
import 'package:page_rebuild/chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "resources/headerBackground.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Diagnosis",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )),
            // Information Container --- This container houses all the data and info that a user reads.
            Container(
              color: Colors.teal[100],
              child: Container(
                height: 440,
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                  ),
                ),
                child: ListView(
                  children: <Widget>[
                    Text(
                      "If you would like to be connected to a physician, please give us the following information (for billing purposes)",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.lightBlue[900],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: RaisedButton(
                        child: Text(
                          "Update Profile",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.teal[200],
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    // Execute "verbalBlurb.dart" here.
                    Blurb(),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Analysis Results",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    // Execute "analysis.dart" here.
                    Analysis(),
                    Text(
                      "Summary:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue[900],
                      ),
                    ),
                    // Execute "summary.dart" here.
                    Summary(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
