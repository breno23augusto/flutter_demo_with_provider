import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_with_provider/components/consumer/counter.dart';
import 'package:flutter_demo_with_provider/models/counter.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(title),
            CounterConsumer(),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterConsumer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
