import 'package:closet/screens/profile_page.dart';
import 'package:closet/screens/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
            child: Text("Closet App"),
          ),
          Container(
              child: ListTile(
            leading: Text("Women"),
            onTap: () {},
          )),
          Container(
              child: ListTile(
            leading: Text("Men"),
            onTap: () {},
          )),
          Container(
              child: ListTile(
            leading: Text("Kids"),
            onTap: () {},
          )),
          Container(
              child: ListTile(
            leading: Text("Profile"),
            onTap: () {
              Navigator.push((context),
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          )),
          Container(
              child: ListTile(
            leading: Text("Orders"),
            onTap: () {},
          )),
          Container(
              child: ListTile(
            leading: Text("Settings"),
            onTap: () {
              Navigator.push((context),
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          )),
          Container(
              child: ListTile(
            leading: Text("Privacy"),
            onTap: () {},
          )),
          Container(
              child: ListTile(
            leading: Text("Security"),
            onTap: () {},
          )),
          Container(
              child: ListTile(
            leading: Text("FAQ's"),
            onTap: () {},
          )),
          Container(
              child: ListTile(
            leading: Text("About us"),
            onTap: () {},
          ))
        ],
      ),
    );
  }
}
