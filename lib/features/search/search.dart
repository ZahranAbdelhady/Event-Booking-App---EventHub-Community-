import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/Filter/Filters.dart';
import 'package:sesion_8/features/search/widgets/MainCardListTile.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  static const routName = "Search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search", style: AppStyles.w400s24black)),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(Icons.search, color: Color(0xFF5669FF)),
                  SizedBox(width: 8),
                  Container(height: 26, width: 2, color: Colors.grey),
                  SizedBox(width: 8),
                  Container(
                    width: 135,

                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search...",

                        // prefixIcon: Icon(
                        //   Icons.search,
                        //   color: Color(0xFF5669FF),
                        // ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed((context), Filters.routName);
                    },
                    child: Container(
                      width: 100,
                      height: 33,
                      decoration: BoxDecoration(
                        color: AppColors.containeronboarding1,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: AppColors.primaryWhite,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.filter_list,
                              color: AppColors.containeronboarding1,
                            ),
                          ),

                          Text("Filters", style: AppStyles.w400s15white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Expanded(
              child: Container(
                width: 327,

                //    height: 624,
                child: ListView(
                  children: [
                    cardListTile(
                      images: AppImages.search1,
                      title: '1st  May- Sat -2:00 PM',
                      subtitle: 'A virtual evening of \nsmooth jazz',
                    ),
                    SizedBox(height: 13),
                    cardListTile(
                      images: AppImages.search2,
                      title: "1st  May- Sat -2:00 PM",
                      subtitle: "Jo malone london’s \nmother’s day",
                    ),
                    SizedBox(height: 13),
                    cardListTile(
                      images: AppImages.search5,
                      title: "1st  May- Sat -2:00 PM",
                      subtitle: "Women's leadership \nconference",
                    ),
                    SizedBox(height: 13),
                    cardListTile(
                      images: AppImages.search4,
                      title: "1st  May- Sat -2:00 PM",
                      subtitle: "International kids safe \nparents night out",
                    ),
                    SizedBox(height: 13),
                    cardListTile(
                      images: AppImages.search5,
                      title: "1st  May- Sat -2:00 PM",
                      subtitle: "International gala \nmusic festival",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class cardListTile extends StatelessWidget {
//   cardListTile({super.key, required this.images,required this.title,required this.subtitle});

//   String images;
//     String title;
//       String subtitle;
//   @override
//   Widget build(BuildContext context) {

//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadiusGeometry.circular(16),
//       ),
//       color: AppColors.primaryWhite,
//       child: ListTile(
//         leading: Image(image: AssetImage(images)),
//         title: Text(title, style: AppStyles.w400s12blue),
//         subtitle: Text(
//           subtitle,
//           style: AppStyles.w400s16TextIconblack,
//         ),
//       ),
//     );
//   }
// }
