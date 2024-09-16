import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import the provider package
import '../models/task.dart';
import '../widgets/task_card.dart';
import '../widgets/navigation_drawer.dart';
import '../providers/task_provider.dart';

class HomeScreen extends StatelessWidget {
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
        child: Consumer<TaskProvider>(
          builder: (context, taskProvider, child) {
            if (taskProvider.tasks.isEmpty) {
              return Center(
                child: Text(
                  'There are no tasks',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: taskProvider.tasks.length,
                itemBuilder: (context, index) {
                  return TaskCard(task: taskProvider.tasks[index]);
                },
              );
            }
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
