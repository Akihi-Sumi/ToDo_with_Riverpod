import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget({
    super.key,
    required this.hintText,
    required this.maxLine,
    required this.controller,
  });

  final String hintText;
  final int maxLine;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
        ),
        maxLines: maxLine,
      ),
    );
  }
}
