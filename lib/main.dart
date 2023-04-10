import 'package:flutter/material.dart';
import 'package:lab_02/employee.dart';
import 'package:intl/intl.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Container(
          //   child: Card(
          //     child: Container(
          //       width: double.infinity,
          //       child: Text('Demo Title'),
          //     ),
          //   ),
          // ),
          Card(
            elevation: 5,
            child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Employee'),
                    ),
                    TextField(decoration: InputDecoration(labelText: 'Salary')),
                    TextButton(
                      child: Text('Add employee salary'),
                      style: TextButton.styleFrom(
                        primary: Colors.red, // foreground
                      ),
                      onPressed: () {/*what happened when tapped...*/},
                    )
                  ],
                )),
          ),
          Column(
              children: employees.map((e) {
            return Card(
                child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 2)),
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
