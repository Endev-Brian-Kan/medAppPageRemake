import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "../page_rebuild/resources/headerBackground.jpg",
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
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        "If you would like to be connected to a physician, please give us the following information (for billing purposes)",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                      RaisedButton(
                        child: Text("Update Profile"),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Colors.teal[200],
                      ),
                      Text(
                        "Hi there, you might want to seek professional medical opinion.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Analysis Results",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 20.0,
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
                      ),
                      Text(
                        "Summary:",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Melanocytic Nevi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue[900],
                              ),
                            ),
                            Text(
                              "Melanocytic Nevi: a benign...",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.lightBlue[900],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
