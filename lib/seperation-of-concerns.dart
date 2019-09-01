import 'package:flutter/material.dart';

class ShowCounter extends StatelessWidget {
  final int counterState;
  const ShowCounter(this.counterState);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(counterState.toString());
  }
}

class IncrementCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CounterState();
  }

}

class CounterState extends State<IncrementCounter> {
  int counterState = 0;

  void _handleTap() {
    setState(() {
      counterState++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [RaisedButton(onPressed: _handleTap, child: Text('click me')), ShowCounter(counterState)],
    );
  }
}

void main() {
  runApp(MaterialApp(home: Material(child: IncrementCounter())));
}