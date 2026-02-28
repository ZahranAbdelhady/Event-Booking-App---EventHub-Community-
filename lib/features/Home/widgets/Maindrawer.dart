import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/Myprofile/myprofile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45),
            CircleAvatar(backgroundImage: AssetImage(AppImages.icondrwa)),
            SizedBox(height: 20),
            Text("Zahran Sayed", style: AppStyles.w400s24black),
            SizedBox(height: 50),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Myprofile.routName);
                  },
                  child: rowDraw(Icons.person, "My Profile"),
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {},
                  child: rowDraw(Icons.message, "Message"),
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {},
                  child: rowDraw(Icons.calendar_month, "Calender"),
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {},
                  child: rowDraw(Icons.bookmark, "Bookmark"),
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {},
                  child: rowDraw(Icons.contact_support_sharp, "Contact Us"),
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {},
                  child: rowDraw(Icons.settings, "Settings"),
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {},
                  child: rowDraw(Icons.help, "Helps & FAQs"),
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {},
                  child: rowDraw(Icons.logout, "Sign Out"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Row rowDraw(IconData icons, String text) {
  return Row(
    children: [
      Icon(icons),
      SizedBox(width: 15),
      Text(text, style: AppStyles.w400s16TextIconblack),
    ],
  );
}
