import 'package:flutter/material.dart';

class FlutterCode extends StatelessWidget {
  const FlutterCode({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter code", style: TextStyle(color: Colors.purple, fontSize: 20)),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('This Page is on Flutter Side', style: TextStyle(color: Colors.purple, fontSize: 20)),
          SizedBox(height: 20)
        ])));
  }
}
