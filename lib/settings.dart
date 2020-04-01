import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Settings'),
        ),
      body: Center(
        child: Text('Settings',
        style: TextStyle(
          fontSize: 20.0,
        ),
        ),
      ),
      );

  }
}
