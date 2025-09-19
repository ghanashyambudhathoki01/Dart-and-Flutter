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

      // ---------------- App Theme ----------------
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Main color theme
        brightness: Brightness.light, // Light mode
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[800]),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark, // Dark mode
        primarySwatch: Colors.teal,
      ),

      themeMode: ThemeMode.light, // Change to dark for dark mode
      home: StylingExamples(),
    );
  }
}

// Main screen showing styling examples
class StylingExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Styling & Theming Example"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---------------- Text Styling ----------------
            Text(
              "Custom Text Styles:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 8),
            Text(
              "This is medium text from theme",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 20),

            // ---------------- Button Styling ----------------
            Text(
              "Themed Buttons:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 8),
            ElevatedButton(onPressed: () {}, child: Text("Primary Button")),
            SizedBox(height: 8),
            OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
            SizedBox(height: 20),

            // ---------------- Container Styling ----------------
            Text(
              "Styled Container:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 8),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Beautiful Container",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[800],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
