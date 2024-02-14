import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Projectilizer Route Demo',
      routes:{
        '/': (context) => MyHomePage(),
        '/second': (context) => ProjectPage(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    // Vertical column for square box and welcome message
    Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text left
      children: [
        // Welcome message below the box
        Text(
          "Welcome, Tharich!",
          style: TextStyle(fontSize: 20),
        ),
        
      ],
    ),
    // ... other widgets for the right side of the app page
  ],
),

        Column(
   mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blue, // Adjust color as needed
          borderRadius: BorderRadius.circular(10), // For rounded corners
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton( // Change here
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text( // Change here
                  "Project Name",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    ),
    // ... other widgets for your app page
  ],
),

Row(
  mainAxisAlignment: MainAxisAlignment.start,
    children: [
        // Project 1 square box
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 50,
            width: 100,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Project 1",
                    style: TextStyle(color: Colors.black),
                  ),
                  // ... add your icon widget here if needed
                ],
              ),
            ),
          ),
        ),
    ],
)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Project 1'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Step 1'),
            ),
            ListTile(
              title: Text('Step 2'),
            ),
            ListTile(
              title: Text('Step 3'),
            ),
            SizedBox(height: 20.0),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
  selectedItemColor: Colors.black,
  onTap: (int index) {
    if (index == 0) {
      // Navigate to the homepage
      Navigator.of(context).pushReplacementNamed('/');
    } else if (index == 1) {
      // Navigate to the search page
      // Implement navigation to other pages as needed
    } else if (index == 2) {
      // Navigate to the saved page
      // Implement navigation to other pages as needed
    } else if (index == 3) {
      // Navigate to the settings page
      // Implement navigation to other pages as needed
    }
  },
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark),
      label: 'Saved',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ],
),

      ),
    );
  }
}
