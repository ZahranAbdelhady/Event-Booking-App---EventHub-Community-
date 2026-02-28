import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/styles.dart';

class mainListtileAllEvents extends StatelessWidget {
  mainListtileAllEvents({
    super.key,
    required this.images,
    required this.title,
    required this.subtitle,
    //required this.iconer,
    required this.text,
  });
  String images;
  String title;
  String subtitle;
  // IconData iconer;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height: 106,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          color: AppColors.primaryWhite,
          child: ListTile(
            leading: Image(image: AssetImage(images), fit: BoxFit.fill),
            title: Text(title, style: AppStyles.w400s12blue),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subtitle, style: AppStyles.w400s16TextIconblack),
                Row(
                  children: [
                    Icon(Icons.pin_drop, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(text, style: AppStyles.w400s12blue),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
