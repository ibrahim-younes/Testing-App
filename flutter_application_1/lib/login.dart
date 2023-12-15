// Import necessary Flutter packages
import 'package:flutter/material.dart';

// Define a stateful widget for the login page
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key); // Constructor for the Login widget

  @override
  State<Login> createState() => _LoginState(); // Create the state for the Login widget
}

// Define the state for the login page
class _LoginState extends State<Login> {
  late TextEditingController _accountController; // Controller for the account text field
  late TextEditingController _passwordController; // Controller for the password text field

  @override
  void initState() {
    super.initState();
    _accountController = TextEditingController(); // Initialize the account controller
    _passwordController = TextEditingController(); // Initialize the password controller
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold widget provides the basic structure of the visual interface
      appBar: AppBar(
        // AppBar widget for the top app bar
        title: const Text('Login'), // Title of the app bar
        leading: IconButton(
          // IconButton for a back button in the app bar
          onPressed: () {
            Navigator.of(context).pop(); // Handle the back button press to pop the current route
          },
          icon: const Icon(Icons.arrow_back_ios_new), // Icon for the back button
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _accountController, // Connect the controller to the account text field
              decoration: const InputDecoration(
                labelText: 'Account', // Label for the account text field
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController, // Connect the controller to the password text field
              obscureText: true, // Hide the entered text for security reasons
              decoration: const InputDecoration(
                labelText: 'Password', // Label for the password text field
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Debugging statements
                print('Account: ${_accountController.text}');
                print('Password: ${_passwordController.text}');

                // Add the login logic here using text file or by making database
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}