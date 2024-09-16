import 'package:flutter/material.dart';
import 'package:task_manager/models/task.dart';
import 'package:intl/intl.dart';
import '../widgets/task_card.dart';
import '../widgets/navigation_drawer.dart';

class HomeScreen extends StatelessWidget {
  final List<Task> tasks = [
    Task(
        id: '1',
        title: 'Bet Matsdat',
        description: 'betun bedenb adrgo matsdat yasfelgal',
        dueDate: DateTime(2017, 12, 12),
        isCompleted: true),
    Task(
        id: '2',
        title: 'Bet Matsdat',
        description: 'betun bedenb adrgo matsdat yasfelgal',
        dueDate: DateTime(2017, 12, 12),
        isCompleted: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF004d40),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskCard(task: tasks[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.pushNamed(context, '/add')},
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF004d40),
        foregroundColor: Colors.white,
      ),
    );
  }
}
