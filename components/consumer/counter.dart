import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_with_provider/models/counter.dart';

class CounterConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<Counter>(
      builder: (context, counter, child) => Text(
        counter.value.toString(),
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
