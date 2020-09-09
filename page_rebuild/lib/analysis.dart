import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import './chart.dart';

var diseaseName = [
  "Melanoma",
  "Melanocytic Nevi",
  "Benign Keratosis",
  "Basal Cell Carcinoma",
  "Actinic Keratoses",
  "Vascular Lesions",
  "Dermatofibroma",
  "Squamous Cell Carcinoma",
];

var result = diseaseName[0];

List<charts.Series<LinearSales, int>> createSampleData() {
  final data = [
    new LinearSales(0, 100),
    new LinearSales(1, 75),
    new LinearSales(2, 25),
    new LinearSales(3, 5),
    new LinearSales(6, 25)
  ];

  return [
    new charts.Series<LinearSales, int>(
      id: 'Sales',
      domainFn: (LinearSales sales, _) => sales.year,
      measureFn: (LinearSales sales, _) => sales.sales,
      data: data,
    )
  ];
}

// Ideally this would be pulled from a data set somewhere.
String probability = "100%";

class Analysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
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
          Container(
            height: 150,
            child: DonutPieChart(
              createSampleData(),
              // Disable animations for image tests.
              animate: false,
            ),
          ),
          Text(
            "$result 100%",
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
