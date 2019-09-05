import 'package:flutter/material.dart';

class SampleMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Material App Example',

      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Sample Material App'),),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text('MJ', ),
            ),
            Center(
              child: Text('Malakalapalli Jitendra'),
            )
          ],
        ),

      ),
    );
  }
}

void main() => runApp(SampleMaterialApp());