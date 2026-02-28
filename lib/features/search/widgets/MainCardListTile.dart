import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/styles.dart';

class cardListTile extends StatelessWidget {
  cardListTile({
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
    return Container(
      height: 112,

      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        color: AppColors.primaryWhite,
        child: ListTile(
          leading: Image(image: AssetImage(images), fit: BoxFit.fitHeight),
          title: Text(title, style: AppStyles.w400s12blue),
          subtitle: Text(subtitle, style: AppStyles.w400s16TextIconblack),
        ),
      ),
    );
  }
}
