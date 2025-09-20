import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Start with HomeScreen
    );
  }
}

// ---------------- Home Screen ----------------
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Home!", style: TextStyle(fontSize: 22)),

            SizedBox(height: 30), // Space before first button

            ElevatedButton(
              child: Text("Go to About Screen"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              },
            ),

            SizedBox(height: 20), //  Space between buttons

            ElevatedButton(
              child: Text("Go to Contact Screen"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactScreen(name: "Ghanashyam"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- About Screen ----------------
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the About Screen", style: TextStyle(fontSize: 22)),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Back to Home"),
              onPressed: () {
                Navigator.pop(context); // Go back to Home
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- Contact Screen ----------------
class ContactScreen extends StatelessWidget {
  final String name;

  ContactScreen({required this.name}); // Constructor to accept data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the Contact Screen", style: TextStyle(fontSize: 20)),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Back to Home"),
              onPressed: () {
                Navigator.pop(context); // Go back to Home
              },
            ),
          ],
        ),
      ),
    );
  }
}
