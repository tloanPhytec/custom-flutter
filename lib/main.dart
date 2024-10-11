import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Flutter App')),
        body: Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hello, World!'), // This remains as your original Hello, World! text
        SizedBox(height: 20), // Adds some space between the text and the button
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isToggled = !_isToggled; // Toggle the state
            });
          },
          child: Text(_isToggled ? 'ON' : 'OFF'), // Display the button label
        ),
      ],
    );
  }
}
