import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';

class ListtileFriends extends StatelessWidget {
  ListtileFriends({
    super.key,
    required this.images,
    required this.title,
    required this.subtitle,
  });

  String images;
  String title;
  String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(images)),
      title: Text(title, style: AppStyles.w400s16TextIconblack),
      subtitle: Text(subtitle, style: AppStyles.w400s14white),
      trailing: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.contHome,
        ),
        child: Icon(Icons.check, color: AppColors.primaryWhite),
      ),
    );
  }
}
