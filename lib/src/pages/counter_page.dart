import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 25);

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Clicks counter', style: _textStyle),
              Text('$_counter', style: _textStyle),
            ],
          ),
        ),
        floatingActionButton: _createButtons()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: _zero
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _remove
        );
        SizedBox(width: 5.0),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _add
        )
      ],
    );
  }

  void _add() => setState(() => _counter++);
  void _remove() => setState(() => _counter++);
  void _zero() => setState(() => _counter = 0);
}
