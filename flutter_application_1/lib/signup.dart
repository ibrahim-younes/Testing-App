// Import necessary Flutter packages
import 'package:flutter/material.dart';

// Define a stateful widget for the signup page
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

// Define the state for the signup page
class _SignupState extends State<signup> {
  // Define controllers for text fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  // Define a variable for age dropdown
  int _selectedAge = 18;
  final List<int> _ages = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold widget provides the basic structure of the visual interface
      appBar: AppBar(
        // AppBar widget for the top app bar
        title: const Text('Create Account'), // Title of the app bar
        leading: IconButton(
          // IconButton for a back button in the app bar
          onPressed: () {
            Navigator.of(context).pop(); // Handle the back button press to pop the current route
          },
          icon: const Icon(Icons.arrow_back_ios_new), // Icon for the back button
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Username'), // Label for the username text field
              ),
              SizedBox(height: 16),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'), // Label for the email text field
                keyboardType: TextInputType.emailAddress, // Set keyboard type for email input
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'), // Label for the password text field
                obscureText: true, // Hide the entered text for security reasons
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Phone Number'), // Label for the phone number text field
                keyboardType: TextInputType.phone, // Set keyboard type for phone number input
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('Age:'),
                  const SizedBox(width: 16),
                  DropdownButton<int>(
                    value: _selectedAge,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedAge = value!;
                      });
                    },
                    items: _ages.map((int age) {
                      return DropdownMenuItem<int>(
                        value: age,
                        child: Text('$age'),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add the signup logic here
                  print('Username: ${_usernameController.text}');
                  print('Email: ${_emailController.text}');
                  print('Password: ${_passwordController.text}');
                  print('Phone Number: ${_phoneController.text}');
                  print('Age: $_selectedAge');
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}