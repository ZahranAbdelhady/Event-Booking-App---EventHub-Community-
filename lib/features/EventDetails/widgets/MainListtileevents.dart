import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/styles.dart';

class MainListtileevents extends StatelessWidget {
  MainListtileevents({
    super.key,
    required this.iconer,
    required this.title,
    required this.subtitle,
  });

  String title;
  String subtitle;
  IconData iconer;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xff5669FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(iconer),
      ),
      title: Text(title, style: AppStyles.w400s16TextIconblack),
      subtitle: Text(subtitle, style: AppStyles.w400s14white),
    );
  }
}
