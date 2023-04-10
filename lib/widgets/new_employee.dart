import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewEmployee extends StatelessWidget {
  final nameController = TextEditingController();
  final salaryController = TextEditingController();
  onPressBtn() {
    // Employee staff = Employee(
    //     id: titleEmployeeName + salaryEmployeeName,
    //     title: titleEmployeeName,
    //     salary: double.parse('${salaryEmployeeName}'),
    //     date: DateTime.now());
    // employees.add(staff);
    print(nameController.text);
    print(salaryController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Employee'),
                controller: nameController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Salary'),
                controller: salaryController,
              ),
              TextButton(
                child: Text('Add employee salary'),
                style: TextButton.styleFrom(
                  primary: Colors.red, // foreground
                ),
                onPressed: onPressBtn(),
              )
            ],
          )),
    );
  }
}
