import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int _selectedIndex = 2; // Track the selected index (Third screen)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/first');
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
      appBar: AppBar(title: Text('Third Screen')),
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
                Navigator.pushNamed(context, '/first');
              },
            ),
            ListTile(
              leading: Icon(Icons.screen_share),
              title: Text('Second Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              leading: Icon(Icons.terrain),
              title: Text('Third Screen'),
              onTap: () {
                Navigator.pop(context); // Close the drawer.
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Return to the previous screen.
                Navigator.pop(context);
              },
              child: Text('Go Back to Second Screen'),
            ),
            SizedBox(height: 20), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate back to the first screen.
                Navigator.pushNamed(context, '/first');
              },
              child: Text('Go Back to First Screen'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Track the selected index
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
        onTap: _onItemTapped, // Handle tap
      ),
    );
  }
}
