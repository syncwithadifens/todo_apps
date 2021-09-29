import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  final String title;
  TodoItem({this.title});

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDone = !isDone;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: Text(
            widget.title,
            style: TextStyle(
              decoration: isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: isDone ? Icon(Icons.check) : SizedBox(),
        ),
      ),
    );
  }
}
