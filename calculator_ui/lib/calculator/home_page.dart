

import 'package:calculator_ui/calculator/setting_page.dart';
import 'package:calculator_ui/screens/blog_screen.dart';
import 'package:calculator_ui/screens/media_screen.dart';
import 'package:calculator_ui/screens/report_screen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> _screens = [
    BlogScreen(),
    MediaScreen(),
    ReportScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/beauty_one.jpg')),
              accountName: Text('sophia memba'),
              accountEmail: Text('sophiamemba@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text('Reports'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text('Drafts'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Bin'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext _)=>ReportScreen()
                )
                );
              },
            ),
            
            Divider(

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext _)=>SettingPage()
                )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Gender Equality'),
      ),
      body: _screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: 'blog'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Media'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'report'),
        ],
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
