import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joint_camp/components/todo_card.dart';
import 'package:joint_camp/model/todo_model.dart';

class TodoPage extends StatelessWidget {
  TodoPage({super.key});

  final todos = [
    TodoModel(task: 'Belajar Rust', createdAt: DateTime.now().toIso8601String()),
    TodoModel(task: 'Belajar Golang', createdAt: DateTime.now().toIso8601String()),
    TodoModel(task: 'Belajar Flutter', createdAt: DateTime.now().toIso8601String()),
    TodoModel(task: 'Belajar Merelakannya', createdAt: DateTime.now().toIso8601String()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "JOINTS Todo",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: todos.map((e) => TodoCard(model: e)).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(CupertinoIcons.add),
      ),
    );
  }
}
