import 'package:flutter/material.dart';
import 'package:task_manager/screens/add_task_screen.dart';
import 'package:task_manager/screens/completed_task_screen.dart';
import 'package:task_manager/screens/home_screen.dart';
import 'package:task_manager/screens/setting_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      routes: {
        '/home' : (context) => HomeScreen(),
        '/add' : (context) => AddTaskScreen(),
        '/completed' : (context) => CompletedTaskScreen(),
        '/settings' : (context) => SettingScreen(),
      },
    );
  }
}