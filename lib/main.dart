import 'package:flutter/material.dart';
//import 'package:flutter_nested_listview/views/employe_page.dart';
import 'package:flutter_nested_listview/views/homepage.dart';
//import 'package:flutter_nested_listview/views/financial_records.dart';
//import 'package:flutter_nested_listview/views/nested_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}

