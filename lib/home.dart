import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.2.dart';
import 'package:flutter_application_1/like.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/setting.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectIndex = 0;

  List screenList = [
    Home2(),
    Like(),
    Search(),
    //Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.teal,
        color: Colors.white,
        activeColor: Colors.white,
        gap: 8,
        selectedIndex: selectIndex,
        onTabChange: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        tabs: [
          GButton(
            icon: Icons.home,
            iconColor: Colors.black,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite,
            iconColor: Colors.black,
            text: 'Like',
          ),
          GButton(
            icon: Icons.search,
            iconColor: Colors.black,
            text: 'Search',
          ),
          GButton(
            icon: Icons.settings,
            iconColor: Colors.black,
            text: 'Settings',
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Title'),
              accountEmail: Text('subtext'),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Inbox'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Outbox'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.archive),
              title: Text('Archive'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.new_releases_sharp),
              title: Text('Spam'),
              onTap: () => null,
            ),
            Divider(),
            Text('   Labels'),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Family'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Friends'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Work'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings & Accounts'),
              onTap: () => null,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.language,
          color: Colors.white,
        ),
        shape: CircleBorder(eccentricity: 1.0),
      ),
      appBar: AppBar(
        // leading: IconButton(
        //icon: Icon(
        // Icons.menu,
        // color: Colors.white,
        // ),
        // onPressed: () {},
        // ),
        backgroundColor: Colors.teal,
        title: Text(
          'Influxdev',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 200,
      ),
      body: Center(
        child: screenList.elementAt(selectIndex),
      ),
    );
  }
}
