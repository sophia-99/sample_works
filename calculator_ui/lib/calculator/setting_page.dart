import 'package:calculator_ui/calculator/account.dart';
import 'package:calculator_ui/calculator/profile.dart';
import 'package:flutter/material.dart';


class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext _) => Profile()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/beauty_one.jpg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Profile',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(),
                        Text(
                          'mama',
                          style: Theme.of(context).textTheme.subtitle2,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(
                    Icons.qr_code,
                    color: Colors.teal,
                  )
                ],
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Transform.rotate(
                angle: 20.4,
                child: Icon(
                  Icons.vpn_key_rounded,
                  color: Colors.teal,
                )),
            title: Text('Account'),
            subtitle: Text('Privacy, Security, change number'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext _) => Account()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
              color: Colors.teal,
            ),
            title: Text('Chats'),
            subtitle: Text('Theme, wallpapers, chat history'),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.teal,
            ),
            title: Text('Notifications'),
            subtitle: Text('Message, groups & call tones'),
          ),
          ListTile(
            leading: Icon(
              Icons.data_usage,
              color: Colors.teal,
            ),
            title: Text('Storage and Data'),
            subtitle: Text('Network usage, auto-download'),
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Colors.teal,
            ),
            title: Text('Help'),
            subtitle: Text('Help centre, contact us, privacy police'),
          ),
          Divider(
            indent: 15.0,
            endIndent: 15.0,
          ),
          ListTile(
            leading: Icon(
              Icons.group,
              color: Colors.teal,
            ),
            title: Text('Invite a friend'),
          )
        ],
      ),
    );
  }
}
