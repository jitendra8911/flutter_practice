import 'package:flutter/material.dart';

class SampleNonMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Malakalapalli Jitendra',
            textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black45
              ),
            ),
          )
        ],
      ),
    );
  }
}

void main() => runApp(SampleNonMaterialApp());