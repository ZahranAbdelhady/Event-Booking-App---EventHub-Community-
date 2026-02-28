import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';

class maincontainerfildnum extends StatelessWidget {
  const maincontainerfildnum({super.key, required this.num});

  final TextEditingController num;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      color: AppColors.primaryWhite,
      child: TextFormField(
        controller: num,
        maxLength: 1,
        keyboardType: TextInputType.number,

        decoration: InputDecoration(
          border: OutlineInputBorder(),
          fillColor: Colors.blue,
        ),
      ),
    );
  }
}
