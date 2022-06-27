// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types

import 'package:flutter/material.dart';

class nueComponent extends StatelessWidget {
  final child;
  const nueComponent({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: child),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // right side shadow
          BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              spreadRadius: 2,
              offset: const Offset(5, 5)),

          // left side shadow
          const BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              spreadRadius: 2,
              offset: Offset(-5, -5))
        ],
      ),
    );
  }
}
