// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Tyler Broski'),
            accountEmail: Text('afridi@ahmed.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/tyler.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('assets/images/bg.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.description, color: Colors.white),
            title:
                Text('Manage Streams', style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text('Manage Users', style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share, color: Colors.white),
            title: Text('Share', style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.white),
            title: Text('Alerts', style: TextStyle(color: Colors.white)),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('Settings', style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          ListTile(
            title: Text('Logout', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.exit_to_app, color: Colors.white),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
