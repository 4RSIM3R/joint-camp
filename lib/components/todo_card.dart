import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joint_camp/model/todo_model.dart';

class TodoCard extends StatefulWidget {
  TodoCard({super.key, required this.model});

  final TodoModel model;

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 5,
            color: Colors.grey[300]!,
          )
        ],
      ),
      child: Row(
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (val) {
                setState(() {
                  isChecked = !isChecked;
                });
              }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.model.task ?? '-', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              Text(widget.model.createdAt ?? '-'),
            ],
          ),
          Expanded(child: SizedBox()),
          Icon(CupertinoIcons.star)
        ],
      ),
    );
  }
}
