import 'package:flutter/cupertino.dart';
import 'package:provider_app/models/todo.dart';

class TodoData extends ChangeNotifier{
  List<Todo> todos = [
    Todo(text: "Study Flutter", done: true),
    Todo(text: "Watch YouTube videos about Flutter"),
    Todo(text: "Go sleep!")
  ];

  setDone(Todo todo, bool value){
    todo.done = value;
    notifyListeners();
  }

}