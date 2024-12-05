import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _selectedIndex = 1; // Track the selected index (Second screen)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/first');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/second');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/third');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
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
                Navigator.pushReplacementNamed(context, '/first');
              },
            ),
            ListTile(
              leading: Icon(Icons.screen_share),
              title: Text('Second Screen'),
              onTap: () {
                Navigator.pop(context); // Close the drawer.
              },
            ),
            ListTile(
              leading: Icon(Icons.terrain),
              title: Text('Third Screen'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/third');
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
                // Navigate to the first screen and update the current index.
                Navigator.pushReplacementNamed(context, '/first');
              },
              child: Text('Go Back to First Screen'),
            ),
            SizedBox(height: 20), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the third screen.
                Navigator.pushReplacementNamed(context, '/third');
              },
              child: Text('Go to Third Screen'),
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
