import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Customer'),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSupportOptions(); // Call a function to show support options
        },
        child: const Icon(Icons.support_agent_rounded),
      ),
    );
  }

  // Function to show the support options in a modal bottom sheet
  void _showSupportOptions() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          // Set the desired width (90% of the screen width in this example)
          width: MediaQuery.of(context).size.width * 0.9,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Contact Support',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Implement the action to call the phone number
                    debugPrint('Calling support phone number');
                    Navigator.pop(context); // Close the modal bottom sheet
                  },
                  child: Text('Call Support'),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Implement the action to start a live chat
                    debugPrint('Initiating live chat');
                    Navigator.pop(context); // Close the modal bottom sheet
                  },
                  child: Text('Live Chat'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}