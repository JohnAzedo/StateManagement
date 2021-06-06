import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/data/todo.dart';
import 'package:provider_app/models/todo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _itemBuilder(Todo todo){
    TodoData provider = Provider.of<TodoData>(context);
    return CheckboxListTile(
      title: Text(todo.text),
      value: todo.done,
      onChanged: (bool value) {
        provider.setDone(todo, value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Provider"),
      ),
      body: Consumer<TodoData>(
        builder: (context, provider, widget) {
          return ListView.builder(
            itemCount: provider.todos.length,
            itemBuilder: (context, index) {
              Todo todo = provider.todos[index];
              return _itemBuilder(todo);
            },
          );
        },
      ),
    );
  }
}
