// Import the Flutter Material package, which contains pre-built widgets like Scaffold, AppBar, TextField, etc.
import 'package:flutter/material.dart';

// The main function is the entry point of the Flutter app.
void main() {
  // runApp starts the Flutter app and takes a widget as the root.
  runApp(
    // MaterialApp is a convenience widget that wraps several widgets that are commonly required for Material Design apps.
    new MaterialApp(
      // The 'home' property defines the default route of the app. Here we are using MyTextInput widget as the home screen.
      home: new MyTextInput(),
    ),
  );
}

// MyTextInput is a StatefulWidget because the UI will change as the user types.
class MyTextInput extends StatefulWidget {
  @override
  // createState creates the mutable state for this widget.
  MyTextInputState createState() => new MyTextInputState();
}

// This is the state class for MyTextInput. It holds the data (state) and builds the UI.
class MyTextInputState extends State<MyTextInput> {
  // A string variable to store the current text typed by the user.
  String result = "";

  // The build method describes how to display the widget in the UI.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Scaffold provides a basic layout structure (AppBar, Body, FloatingActionButton, etc.)
      appBar: new AppBar(
        // Title of the AppBar
        title: new Text("Input Text"),
        // Background color of the AppBar
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        // Container is a general-purpose widget for layout and styling
        child: new Center(
          // Center aligns its child in the middle of the screen
          child: new Column(
            // Column arranges widgets vertically
            mainAxisAlignment:
                MainAxisAlignment.center, // Center column content vertically
            children: <Widget>[
              // TextField widget allows user input
              new TextField(
                // Decoration adds UI hints inside the text field
                decoration: new InputDecoration(
                  hintText:
                      "Type in here", // Hint text shown when the field is empty
                ),
                // onChanged is called whenever the user types or deletes text
                onChanged: (String str) {
                  // setState notifies Flutter to rebuild the UI with updated values
                  setState(() {
                    result =
                        str; // Update the 'result' variable with the current input
                  });
                },
              ),
              // Display the current input below the TextField
              new Text(result),
            ],
          ),
        ),
      ),
    );
  }
}
