import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(),
    ),
  );
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.star_rate),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Employee Management'),
      ),
      // body is the majority of the screen.
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              width: double.infinity,
              child: Text('Demo Title'),
            ),
          ),
          Card(
            color: Colors.red,
            child: Text('List of employees'),
          )
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
