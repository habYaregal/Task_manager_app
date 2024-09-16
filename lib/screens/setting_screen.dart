import 'package:flutter/material.dart';
import 'package:task_manager/widgets/navigation_drawer.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF004d40),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
