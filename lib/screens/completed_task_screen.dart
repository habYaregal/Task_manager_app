import 'package:flutter/material.dart';
import 'package:task_manager/widgets/navigation_drawer.dart';

class CompletedTaskScreen extends StatelessWidget {
  const CompletedTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF004d40),
        title: Text(
          'Completed Tasks',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}