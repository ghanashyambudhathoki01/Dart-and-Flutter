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
      home: LayoutExamples(),
    );
  }
}

// Main screen showing different layout examples
class LayoutExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Layouts Example")),
      body: SingleChildScrollView( // Allows scrolling if content is big
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column( // Column to place all examples vertically
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---------------- Column Example ----------------
              Text("Column Example:", style:
               TextStyle(fontSize: 18, 
              fontWeight: FontWeight.bold)),
              Column(
                children: [
                  Container(color: Colors.red, 
                  height: 50, 
                  width: double.infinity, 
                  child: Center(child: Text("Item 1"))),
                  Container(color: Colors.green,
                   height: 50, width: double.infinity, 
                   child: Center(child: Text("Item 2"))),
                  Container(color: Colors.blue,
                   height: 50, width: double.infinity,
                    child: Center(child: Text("Item 3"))),
                ],
              ),
              SizedBox(height: 20),

              // ---------------- Row Example ----------------
              Text("Row Example:", style: TextStyle(fontSize: 18, 
              fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(color: Colors.orange, 
                  height: 50,
                   width: 50, child: 
                   Center(child: Text("A"))),
                  Container(color: Colors.purple,
                   height: 50,
                   width: 50, child: 
                   Center(child: Text("B"))),
                  Container(color: Colors.teal,
                   height: 50,
                   width: 50, child: Center
                   (child: Text("C"))),
                ],
              ),
              SizedBox(height: 20),

              // ---------------- Stack Example ----------------
              Text("Stack Example:", 
              style: TextStyle(fontSize: 18,
               fontWeight: FontWeight.bold)),
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.grey[300],
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(color: Colors.red,
                       height: 80, width: 80),
                    ),
                    Positioned(
                      left: 50,
                      top: 50,
                      child: Container(color: Colors.green,
                       height: 80, width: 80),
                    ),
                    Positioned(
                      left: 80,
                      top: 80,
                      child: Container(color: Colors.blue,
                       height: 80, width: 80),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // ---------------- GridView Example ----------------
              Text("GridView Example:", style: 
              TextStyle(fontSize: 18, 
              fontWeight: FontWeight.bold)),
              Container(
                height: 200, // Fixed height so it doesn’t expand infinitely
                child: GridView.count(
                  crossAxisCount: 3, // Number of columns
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: List.generate(6, (index) {
                    return Container(
                      color: Colors.amber,
                      child: Center(child: Text("Item ${index + 1}")),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
