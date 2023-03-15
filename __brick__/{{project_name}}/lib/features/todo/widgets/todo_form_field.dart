import 'package:flutter/material.dart';

class TodoFormField extends StatelessWidget {
  const TodoFormField({
    Key? key,
    required this.title,
    required this.onChanged,
    required this.textController,
  }) : super(key: key);

  final String title;
  final void Function(String) onChanged;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 100,
          child: Text(title),
        ),
        Container(
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            controller: textController,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
