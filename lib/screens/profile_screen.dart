import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
      ),
      body: ListView(
       
        children: <Widget>[
          SizedBox(height: 16),
          _buildSettingItem(title: 'Edit Profile', icon: Icons.person),
          _buildSettingItem(title: 'Change Password', icon: Icons.lock),
          _buildSettingItem(title: 'Notifications', icon: Icons.notifications),
          _buildSettingItem(title: 'Privacy Policy', icon: Icons.security),
        ],
      ),
    );
  }



  Widget _buildSettingItem({required String title, required IconData icon}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        // Handle tap
      },
    );
  }
}