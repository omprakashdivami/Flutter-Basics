import 'package:flutter/material.dart';


class Todo extends StatelessWidget{
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'todo',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const MyTodo(),
    );
  }

}
class MyTodo extends StatelessWidget {
  const MyTodo({super.key});
  @override
  Widget build(BuildContext context) {
    return const TextField();
  }
}