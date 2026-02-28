import 'package:flutter/material.dart';

class containertool extends StatelessWidget {
  containertool({
    super.key,
    required this.text,
    required this.colors,
    required this.width,
    required this.height,
  });
  String text;
  int colors;
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(colors),
        borderRadius: BorderRadius.circular(70),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
