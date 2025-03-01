import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  final String todoName;
  final bool? done;
  final void Function(bool?)? onChanged;

  const Todo({
    super.key,
    required this.todoName,
    this.done = false,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Color(0XFF6040AF),
      ),
      child: Row(
        children: [
          Checkbox(
            value: done,
            checkColor: Color(0XFF6040AF),
            fillColor: WidgetStatePropertyAll(Colors.white),
            onChanged: onChanged,
          ),
          Text(
            todoName,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              decorationColor: Colors.white,
              decoration: done == true
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
