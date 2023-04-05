import 'package:flutter/material.dart';

class Employee {
  final String id;
  final String title;
  final double salary;
  final DateTime date;
  Employee(
      {required this.id,
      required this.title,
      required this.salary,
      required this.date});
}
