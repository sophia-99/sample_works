import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 80.0,
                          backgroundImage:
                              AssetImage('assets/images/beauty_one.jpg'),
                        ),
                        Positioned(
                          bottom: 10.0,
                          right: 10.0,
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Center(
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.teal, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.person,color: Colors.teal),
                            title: Text('Name'),
                            subtitle: Text(
                              'Sophy',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            trailing: Icon(Icons.edit, color: Colors.teal),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 70.0),
                            child: Text(
                                'This is not your username or pin. This name will be visible to your watsap contacts'
                                ,
                                maxLines: 2,),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      indent: 70.0,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.info_outline,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'About',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      subtitle: Text(
                        'Enter your contents',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: Icon(Icons.edit, color: Colors.teal),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      indent: 70.0,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Phone',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      subtitle: Text(
                        '+255 738 031 887',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
