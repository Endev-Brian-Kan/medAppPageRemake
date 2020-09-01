import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen!");
  }

  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite colour?",
      "What's your favourite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(questions[0]),
        // ),
        body: Column(
          children: <Widget>[
            Container(
              // color: Colors.blue,
              // ../resources/headerBacgkround.jpg
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("./../resources/headerBackground.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 200,
            ),
            Container(
              color: Colors.green,
              child: Text("Diagnosis"),
              width: double.infinity,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                          "If you would like to be connected to a physician, please give us the following information (for billing purposes)"),
                      RaisedButton(
                        child: Text("Update Profile"),
                        onPressed: null,
                      ),
                      Text(
                          "Hi there, you might want to seek professional medical opinion."),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Analysis Results"),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("<Insert Blue Bar Graphic>"),
                            Text("Melanocytic Nevi 100.0%"),
                          ],
                        ),
                      ),
                      Text("Summary:"),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("Melanocytic Nevi"),
                            Text("Melanocytic Nevi: a benign..."),
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
