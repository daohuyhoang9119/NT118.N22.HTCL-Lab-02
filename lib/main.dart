import 'package:flutter/material.dart';
import 'package:lab_02/employee.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: Home(),
    ),
  );
  // runApp(const TutorialHome());
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Employee> employees = [
    Employee(
        id: 'e1', title: 'Nguyen van a', salary: 100, date: DateTime.now()),
    Employee(
        id: 'e2', title: 'Nguyen van b', salary: 200, date: DateTime.now()),
    Employee(
        id: 'e3', title: 'Nguyen van c', salary: 300, date: DateTime.now()),
    Employee(
        id: 'e4', title: 'Nguyen van d', salary: 400, date: DateTime.now()),
    Employee(
        id: 'e5', title: 'Nguyen van e', salary: 500, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        // leading: const IconButton(
        //   icon: Icon(Icons.star_rate),
        //   tooltip: 'Navigation menu',
        //   onPressed: null,
        // ),
        title: const Text('Employee Management'),
      ),
      // body is the majority of the screen.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              child: Container(
                width: double.infinity,
                child: Text('Demo Title'),
              ),
            ),
          ),
          Column(
              children: employees.map((e) {
            return Card(child: Text(e.title));
          }).toList())
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
