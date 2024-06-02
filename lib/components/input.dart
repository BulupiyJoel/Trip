import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const TextField(
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
