import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChanged;
  const InputWidget({
    Key? key,
    required this.hintText,
    this.autofocus = false,
    this.obscureText = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: obscureText,
          autocorrect: autofocus,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          style: const TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.w400),
          onChanged: onChanged,
        ),
        const Divider(
          height: 1,
          thickness: 0.5,
          color: Colors.white,
        )
      ],
    );
  }
}
