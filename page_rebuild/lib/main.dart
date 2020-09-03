import 'package:flutter/material.dart';

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
            // Information Container --- This container houses all the data and info that a user reads.
            Container(
              color: Colors.teal[100],
              child: Container(
                height: 440,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                  ),
                ),
                child: Expanded(
                  child: ListView(
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
                              backgroundColor: Colors.red,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Summary:",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue[900],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //       ),
            //     );
            //   },
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}
