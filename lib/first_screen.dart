import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _selectedIndex = 0; // Track the selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/second');
        break;
      case 2:
        Navigator.pushNamed(context, '/third');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Navigation Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('First Screen'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.screen_share),
              title: Text('Second Screen'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.terrain),
              title: Text('Third Screen'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second').then((_) {
              // After navigating back, update the selected index.
              setState(() {
                _selectedIndex = 1;
              });
            });
          },
          child: Text('Go to Second Screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Set the current selected index
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.screen_share),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.terrain),
            label: 'Third',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
