import 'package:flutter/material.dart';
import 'package:flutter_nested_listview/helper/formatter.dart';
import 'package:flutter_nested_listview/views/widgets/background_header.dart';
import 'package:flutter_nested_listview/views/widgets/card_detail.dart';
import 'package:flutter_nested_listview/views/widgets/summary_cash.dart';

class FinancialRecords extends StatelessWidget{

  const FinancialRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                backgroundHeader(),
                summaryCash()
              ],
            ),
            cardDetail("Makan Siang", "Beli makan di Warung Padang", FormatterLocal.toRupiah(15000), "out"),
            cardDetail("Bonus", "Dapat Hibah Penelitian", FormatterLocal.toRupiah(30000000), "in"),
            cardDetail("Beli Baju", "Baju Kemeja Kantor", FormatterLocal.toRupiah(250000), "out"),
          ]
        ),
      ),
    );
  }
}