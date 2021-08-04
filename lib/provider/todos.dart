import 'package:flutter/cupertino.dart';
import 'package:todo_app/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
        createdTime: DateTime.now(),
        title: 'Walk the dog',
        description: 'Makes sense'),
    Todo(
      createdTime: DateTime.now(),
      title: 'Watch Udemy Course',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Visit the clinic1 ',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Visit the clinic2 ',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Visit the clinic3 ',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Visit the clinic4 ',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Visit the clinic5 ',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Visit the clinic6 ',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Visit the clinic7 ',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
