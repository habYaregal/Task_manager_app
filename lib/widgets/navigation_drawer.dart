import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF004d40), // Deep green background
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF004d40), // Match drawer background color
              ),
              child: Text(
                'Task Manager',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28, // Larger font size for the header
                  fontWeight: FontWeight.bold, // Bold header text
                ),
              ),
            ),
            _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            _createDrawerItem(
              icon: Icons.task,
              text: 'Completed Tasks',
              onTap: () {
                Navigator.pushNamed(context, '/completed');
              },
            ),
            _createDrawerItem(
              icon: Icons.settings,
              text: 'Settings',
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            Divider(
              color: Colors.white38, // Light divider color
            ),
            _createDrawerItem(
              icon: Icons.exit_to_app,
              text: 'Logout',
              onTap: () {
                // Add logout functionality here
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white, // White icons
        size: 24, // Adjust icon size
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white, // White text
          fontSize: 18, // Adjust text size
        ),
      ),
      onTap: onTap,
    );
  }
}
