// import 'package:flutter/gestures.dart';
// import 'package:calculator_ui/calculator/home_page.dart';
import 'package:calculator_ui/calculator/Update.dart';
import 'package:flutter/material.dart';

class ViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      drawer: Drawer(
          elevation: 10.0,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/28753061_203631020224680_6720877945629442048_n.jpg'),
                  ),
                  accountName: Text('sophia memba'),
                  accountEmail: Text('sophiamemba@gmail.com')),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('settings'),
                subtitle: Text('program settings'),
                trailing: Icon(Icons.access_alarm),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext _)=>Update()));
                },
              ),
            ],
          )),
      appBar: AppBar(
        title: Text("sophia demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.black,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/images/28753061_203631020224680_6720877945629442048_n.jpg'),
              ),
            );
          }),
    );
  }
}
