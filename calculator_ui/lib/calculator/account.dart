import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.privacy_tip,
              color: Colors.teal,
            ),
            title: Text('Privacy'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.security,
              color: Colors.teal,
            ),
            title: Text('Security'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.verified,
              color: Colors.teal,
            ),
            title: Text('Two-step Verification'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.change_history,
              color: Colors.teal,
            ),
            title: Text('Change Number'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.teal,
            ),
            title: Text('Request Account info'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.delete,
              color: Colors.teal,
            ),
            title: Text('Delete my account'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.teal,
            ),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
