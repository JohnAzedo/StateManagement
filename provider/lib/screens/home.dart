import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/data/todo.dart';
import 'package:provider_app/models/todo.dart';

class Home extends StatelessWidget {
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
            itemBuilder: (context, index){
              Todo todo = provider.todos[index];
              return CheckboxListTile(
                title: Text(todo.text),
                value: todo.done,
                onChanged: (bool value){
                  provider.setDone(todo, value);
                },
              );
            },
          );
        },
      ),
    );
  }
}
