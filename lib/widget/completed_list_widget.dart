import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/todos.dart';
import 'package:todo_app/widget/todo_widget.dart';

class CompledListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.taskCompleted;
    return todos.isEmpty
        ? Center(
            child: Text(
              'No todo',
              style: TextStyle(fontSize: 20),
            ),
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              final todo = todos[index];
              return TodoWidget(todo: todo);
            },
            separatorBuilder: (context, index) => Container(height: 6),
            itemCount: todos.length,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
          );
  }
}
