import 'package:flutter/material.dart';

class ShowCounter extends StatelessWidget {
  final int _counterState;
  const ShowCounter(this._counterState);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(_counterState.toString());
  }
}

class ButtonToIncrementCounter extends StatelessWidget {
  final _handleCallback;
  const ButtonToIncrementCounter(this._handleCallback);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(onPressed: _handleCallback, child: Text('click me'));
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
  int _counterState = 0;

  void _handleTap() {
    setState(() {
      _counterState++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [ButtonToIncrementCounter(_handleTap), ShowCounter(_counterState)],
    );
  }
}

void main() {
  runApp(MaterialApp(home: Material(child: IncrementCounter())));
}