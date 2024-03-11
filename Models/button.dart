
import 'package:flutter/material.dart';

Widget btn({
  required String text,
  required Color btnColor,
  required Color txtColor,
  required Function() onTap,
  required double width,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: btnColor, fixedSize: Size(width, 50)),
    onPressed: onTap,
    child: Text(
      text,
      style: TextStyle(
        color: txtColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
