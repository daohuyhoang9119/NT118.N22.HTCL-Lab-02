import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lab_02/models/employee.dart';

class EmployeeList extends StatelessWidget {
  final List<Employee> _employeeList = [
    Employee(
        id: 'e1', title: 'Nguyen van a', salary: 100, date: DateTime.now()),
    Employee(
        id: 'e2', title: 'Nguyen van b', salary: 200, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _employeeList.map((e) {
      return Card(
          child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: EdgeInsets.all(15),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.pink, width: 2)),
            child: Text(
              ' ${e.salary} VND',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.pink,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                e.title.toString().toUpperCase(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                DateFormat('dd/MM/yyyy').format(e.date),
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ));
    }).toList());
  }
}
