import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffolding example'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
        child: Icon(Icons.add),
      )
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScaffoldExample(),
  ));
}