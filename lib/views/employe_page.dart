import 'package:flutter/material.dart';
import 'package:flutter_nested_listview/helper/formatter.dart';
import 'package:flutter_nested_listview/models/employe.dart';

class EmployePage extends StatelessWidget{
  EmployePage({super.key});

  final data = [
    EmployeeModel(
      id: "1", 
      employeeName: "Deny Hidayatullah", 
      employeeSalary: FormatterLocal.toRupiah(320800), 
      employeeAge: "54", 
      profileImage: ""),
    EmployeeModel(
      id: "2", 
      employeeName: "Arie Gunawan", 
      employeeSalary: FormatterLocal.toRupiah(40000), 
      employeeAge: "45", 
      profileImage: ""),
    EmployeeModel(
      id: "3", 
      employeeName: "Sari Ningsih", 
      employeeSalary: FormatterLocal.toRupiah(120000), 
      employeeAge: "60", 
      profileImage: ""),
    EmployeeModel(
      id: "4", 
      employeeName: "Dhieka A. Lantana", 
      employeeSalary: FormatterLocal.toRupiah(28000), 
      employeeAge: "37", 
      profileImage: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: const Text("CRUD Karyawan"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){
          return Card(
            elevation: 8,
            child: ListTile(
              title: Text(
                data[index].employeeName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("Umur : ${data[index].employeeAge}"),
              trailing: Text(data[index].employeeSalary),
            ),
          );
        }
      ),
    );
  }
}