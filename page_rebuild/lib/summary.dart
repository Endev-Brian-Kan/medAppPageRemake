import 'package:flutter/material.dart';

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

var diseaseInfo = [
  'Melanoma: the most serious type of skin cancer.  They often appear as tan, brown, or black raised spots with a waxy texture or rough surface; they might not be round like normal moles either.',
  'Melanocytic Nevi: a benign, skin pigmentation typically larger than normal moles and tend to have irregular borders and irregular coloration.',
  'Benign Keratosis: a benign, noncancerous skin growth that people develop as they age.   Their appearance is waxy, and they look as if they are "stuck on" to the skin.',
  'Basal Cell Carcinoma: a type of skin cancer. Often appears as a slightly transparent bump on the skin, though it can take other forms such as a dark growth or shiny pink or red patches that are slightly scaly. Another symptom to watch out for is a waxy, hard skin growth.',
  'Actinic Keratoses: is a rough, scaly patch on your skin that develops from years of exposure to the sun.  If treated early, almost all actinic keratoses can be cleared up or removed before they develop into skin cancer.',
  'Vascular Lesions: a birthmark.  They are not dangerous and may require cosmetic treatment or no treatment at all.',
  'Dermatofibroma: a harmless, non-cancerous bump within the skin that usually has a small diameter. They can vary in color, and the color may change over the years.',
  'Squamous Cell Carcinoma: a fairly slow-growing skin cancer. Unlike other types of skin cancer, it can spread to the tissues, bones, and nearby lymph nodes, where it may become hard to treat.  May appear as flat reddish or brownish patches in the skin, often with a rough, scaly, or crusted surface.',
];

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
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
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
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
            "Melanocytic Nevi: a benign lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(
              fontSize: 12,
              color: Colors.lightBlue[900],
            ),
          ),
        ],
      ),
    );
  }
}
