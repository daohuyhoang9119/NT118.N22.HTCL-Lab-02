import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'employee_list.dart';
import 'new_employee.dart';

class _UserList extends StatefulWidget {
  const _UserList({super.key});

  @override
  State<_UserList> createState() => __UserListState();
}

class __UserListState extends State<_UserList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewEmployee(),
        EmployeeList(),
      ],
    );
  }
}
