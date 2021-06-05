import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/data/todo.dart';
import 'package:provider_app/screens/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TodoData>.value(
          value: TodoData(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Todo",
        theme: ThemeData(
          primarySwatch: Colors.teal
        ),

        home: Home()
      ),
    );
  }
}
