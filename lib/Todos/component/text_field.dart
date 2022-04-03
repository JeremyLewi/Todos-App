import 'package:flutter/material.dart';

class CustomTF extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry padding;
  final int maxLines;

  const CustomTF(
      {Key? key,
      required this.hintText,
      required this.maxLines,
      required this.padding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(),
      obscureText: false,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 170, 171, 175),
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 170, 171, 175),
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        contentPadding: padding,
      ),
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      textAlign: TextAlign.start,
      maxLines: maxLines,
    );
  }
}
