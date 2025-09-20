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
      home: BigFormExample(),
    );
  }
}

// ---------------- Large Form Example ----------------
class BigFormExample extends StatefulWidget {
  @override
  _BigFormExampleState createState() => _BigFormExampleState();
}

class _BigFormExampleState extends State<BigFormExample> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for inputs
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  String _gender = "Male"; // Dropdown value
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Registration Form")),
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // 1. Name
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) => value == null || value.isEmpty
                          ? "Name required"
                          : null,
                    ),
                    SizedBox(height: 20),

                    // 2. Email
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email required";
                        } else if (!value.contains("@")) {
                          return "Enter valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),

                    // 3. Password
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) => value != null && value.length < 6
                          ? "Password must be 6+ characters"
                          : null,
                    ),
                    SizedBox(height: 20),

                    // 4. Age
                    TextFormField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Age",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return "Age required";
                        int? age = int.tryParse(value);
                        if (age == null || age <= 0) return "Enter valid age";
                        return null;
                      },
                    ),
                    SizedBox(height: 20),

                    // 5. Phone Number
                    TextFormField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) => value == null || value.length < 10
                          ? "Enter valid phone number"
                          : null,
                    ),
                    SizedBox(height: 20),

                    // 6. Gender (Dropdown)
                    DropdownButtonFormField<String>(
                      value: _gender,
                      items: ["Male", "Female", "Other"]
                          .map(
                            (gender) => DropdownMenuItem(
                              value: gender,
                              child: Text(gender),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: "Gender",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),

                    // 7. Address
                    TextFormField(
                      controller: _addressController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: "Address",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) => value == null || value.isEmpty
                          ? "Address required"
                          : null,
                    ),
                    SizedBox(height: 20),

                    // Submit Button
                    ElevatedButton(
                      child: Text("Register"),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            _result = "Registration Successful";
                          });
                        }
                      },
                    ),
                    SizedBox(height: 20),

                    // Display Result
                    Text(_result, style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
