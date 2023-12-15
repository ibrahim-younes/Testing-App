// Import necessary Flutter packages
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/signup.dart';

// Define a stateful widget for the home page
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// Define the state for the home page
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Button to navigate to the Login page
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                // Use MaterialPageRoute to define the route to the Login page
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Login(); // Return an instance of the Login page
                  },
                ),
              );
            },
            child: const Text('Login'),
          ),

          SizedBox(height: 20), // Add some space between the buttons

          // Button to navigate to the SignUp page
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                // Use MaterialPageRoute to define the route to the SignUp page
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const signup(); // Return an instance of the SignUp page
                  },
                ),
              );
            },
            child: const Text('Create Account'),
          ),
        ],
      ),
    );
  }
}
