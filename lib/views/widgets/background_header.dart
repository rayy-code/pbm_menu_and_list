import 'package:flutter/material.dart';

Widget backgroundHeader()
{
  return Container(
    height: 300.0,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.pinkAccent,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40)
      )
    ),
    child: const Padding(
      padding: EdgeInsets.only(top: 60.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Dhihya Rayyanda",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "08123456789",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
        ]
      ),
    ),
  );
}