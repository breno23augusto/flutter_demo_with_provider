import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//model
import 'models/counter.dart';

//screen
import 'package:flutter_demo_with_provider/screens/home.dart';

//common
import 'common/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo With Provider',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) {
          return ChangeNotifierProvider<Counter>(
            create: (BuildContext context) => Counter(),
            child: MyHomePage(title: 'Flutter Demo With Provider: '),
          );
        },
      },
    );
  }
}