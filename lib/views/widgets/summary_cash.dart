import 'package:flutter/material.dart';
import 'package:flutter_nested_listview/helper/formatter.dart';

String penghasilan = FormatterLocal.toRupiah(30000000);
String pengeluaran = FormatterLocal.toRupiah(265000);

Widget summaryCash(){
  return Positioned(
    top: 145.0,
    left: 20.0,
    child: Container(
      width: 370.0,
      height: 140.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top:30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Penghasilan"),
                Divider(),
                Text(
                  "Rp. 30.000.000",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text("Pengeluaran"),
                Divider(),
                Text(
                  "Rp 265.000",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}