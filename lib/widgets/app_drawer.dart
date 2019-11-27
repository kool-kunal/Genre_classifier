import 'package:flutter/material.dart';
import 'package:genre_classifier/screens/about_screen.dart';
import 'package:genre_classifier/screens/home_Page_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 50,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Kunal",
            ),
            accountEmail: Text("test123@mail.com"),
            currentAccountPicture: CircleAvatar(
              radius: 5,
              backgroundColor: Colors.orange,
              child: Text(
                "K",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            },
            child: ListTile(
              leading: Text(
                "Home",
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AboutUsScreen.routeName);
            },
            child: ListTile(
              leading: Text(
                "About Contributors",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
