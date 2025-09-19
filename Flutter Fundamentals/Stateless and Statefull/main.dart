import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // The app starts here
}

// Root widget of the app (Stateless)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      home: HomeScreen(), // First screen to open
    );
  }
}

//  Example of a StatelessWidget
// Stateless means the UI does not change dynamically (no internal state)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // This text is fixed and does not change
            Text(
              "Hello, I am Stateless",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),

            // Button to navigate to the Stateful example
            ElevatedButton(
              child: Text("Go to Stateful Example"),
              onPressed: () {
                // Navigate to SwitchScreen (Stateful widget)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SwitchScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
// Stateful means it can change data and rebuild the UI
class SwitchScreen extends StatefulWidget {
  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  // State variable to hold switch status
  bool isOn = false;

  // Function to change switch state
  void _toggleSwitch(bool value) {
    setState(() {
      isOn = value; // Update the state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Switch widget that toggles ON/OFF
            Switch(
              value: isOn, // Current state
              onChanged: _toggleSwitch, // Update when user toggles
            ),
            SizedBox(height: 20),

            // Text changes based on switch state
            Text(
              isOn ? "The switch is ON" : "The switch is OFF",
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
