import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:
          false, // removes the debug banner in top-right corner
      home: MyTextInput(),
    ),
  );
}

// StatefulWidget is used because the UI will change when the user types
class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  // Variable to store the input text
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Text"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center column vertically
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Type in here"),
              // onSubmitted is called when the user presses the "Enter" key on the keyboard
              onSubmitted: (String str) {
                setState(() {
                  result =
                      str; // Update the 'result' variable with submitted text
                });
              },
            ),
            SizedBox(height: 20), // Adds spacing between TextField and Text
            // Display the submitted text
            Text(result),
          ],
        ),
      ),
    );
  }
}
