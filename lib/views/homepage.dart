import 'package:flutter/material.dart';
import 'package:flutter_nested_listview/views/employe_page.dart';
import 'package:flutter_nested_listview/views/financial_records.dart';
import 'package:flutter_nested_listview/views/nested_listview.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});


  State<Homepage> createState()=> _HomepageState();
}

class _HomepageState extends State<Homepage>
{

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.list_alt), label: 'Nested ListView'),
          NavigationDestination(icon: Icon(Icons.account_balance_wallet), label: 'Finance'),
          NavigationDestination(icon: Icon(Icons.badge), label: 'Employee'),
        ],
      ),
      body: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          child: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  children: [
                    const Text(
                      "HomePage",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Ini adalah halaman Home dengan index ke-$currentIndex",
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    )
                  ],
                ),
                )
              )
            ]
            ),
          )
        ),
        const NestedListview(),
        const FinancialRecords(),
        EmployePage(),
      ][currentIndex],
    );
  }
}