import 'package:flutter/material.dart';
import 'package:lab_02/widgets/employee_list.dart';
import 'package:lab_02/widgets/new_employee.dart';

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

  String titleEmployeeName = '';
  String salaryEmployeeName = '';

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Management'),
      ),
      // body is the majority of the screen.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          NewEmployee(),
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
