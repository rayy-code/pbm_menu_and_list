import 'package:flutter/material.dart';

Widget cardDetail(title, description, price, type)
{
  return Card(
    margin: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15),
    elevation: 8,
    child: ListTile(
      leading: Icon(
        type == 'out' ?
        Icons.subdirectory_arrow_left :
        Icons.subdirectory_arrow_right,
        color: type == "out" ? Colors.redAccent : Colors.lightGreen,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        description
      ),
      trailing: Text(
        "$price",
        style: TextStyle(
          color: type == 'out' ? Colors.redAccent : Colors.lightGreen
        ),
      ),
    ),
  );
}