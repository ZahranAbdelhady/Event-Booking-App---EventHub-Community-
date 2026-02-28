import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/onboarding/widgets/MainColumnonboarding.dart';
import 'package:sesion_8/features/signIn/SignIn.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },

                children: [
                  SingleChildScrollView(
                    child: MainOnboarding(
                      image: AppImages.onboarding1,
                      text1: 'Explore Upcoming and ',
                      text2: 'Nearby Events ',
                      text3: ' In publishing and graphic design, Lorem is ',
                      text4: ' a placeholder text commonly',
                    ),
                  ),

                  SingleChildScrollView(
                    child: MainOnboarding(
                      image: AppImages.onboarding2,
                      text1: " Web Have Modern Events",
                      text2: " Calendar Feature",
                      text3: " In publishing and graphic design, Lorem is ",
                      text4: " a placeholder text commonly",
                    ),
                  ),

                  SingleChildScrollView(
                    child: MainOnboarding(
                      image: AppImages.onboarding3,
                      text1: "  To Look Up More Events or",
                      text2: " Activities Nearby By Map",
                      text3: " In publishing and graphic design, Lorem is",
                      text4: " a placeholder text commonly ",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.containeronboarding1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Signin.routName);
                      },
                      child: Text("Skip", style: AppStyles.w500s20White),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        if (_currentPage < 2) {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Navigator.pushNamed(context, Signin.routName);
                        }
                      },
                      child: Text("Next", style: AppStyles.w500s20White),
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

// class MainOnboarding extends StatelessWidget {
//   const MainOnboarding({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Image.asset(AppImages.onboarding1),
//         SizedBox(height: 20),
//         Container(
//           height: 288,
//           decoration: BoxDecoration(
//             color: AppColors.containeronboarding1,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(48),
//               topRight: Radius.circular(48),
//             ),
//           ),
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 40),
//                 Text(
//                   " Explore Upcoming and ",
//                   style: AppStyles.w400s22White,
//                 ),
//                 Text(
//                   "Nearby Events",
//                   style: AppStyles.w400s22White,
//                 ),
//                 SizedBox(height: 40),
//                 Text(
//                   " In publishing and graphic design, Lorem is",
//                   style: AppStyles.w400s15white,
//                 ),
//                 Text(
//                   "a placeholder text commonly",
//                   style: AppStyles.w400s15white,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// التحت القديم خالص 

// Stack(
//         children: [
//           Column(
//             children: [
//               Image.asset(AppImages.onboarding1, width: 375, height: 475),
//               Container(
//                 height: 288,

//                 decoration: BoxDecoration(
//                   color: AppColors.containeronboarding1,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(48),
//                     topRight: Radius.circular(48),
//                   ),
//                 ),
//                 child: PageView(
//                   children: [
//                     Center(
//                       child: Column(
//                         children: [
//                           SizedBox(height: 40),
//                           Text(
//                             "Explor Upcoming and ",
//                             style: AppStyles.w400s22White,
//                           ),
//                           Text("Nearby Events", style: AppStyles.w400s22White),
//                           SizedBox(height: 40),
//                           Text(
//                             " In publishing and graphic design, Lorem is",
//                             style: AppStyles.w400s15white,
//                           ),
//                           Text(
//                             " a placeholder text commonly ",
//                             style: AppStyles.w400s15white,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 750,

//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed((context), Signin.routName);
//                     },
//                     child: Text("Skip", style: AppStyles.w500s20White),
//                   ),
//                   Spacer(),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text("Next", style: AppStyles.w500s20White),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),