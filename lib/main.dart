import 'package:flutter/material.dart';
import 'package:sesion_8/features/EmptyEvents/EmptyEvents.dart';
import 'package:sesion_8/features/EventDetails/EventsDetails.dart';
import 'package:sesion_8/features/Filter/Filters.dart';
import 'package:sesion_8/features/ForgotPassword/forgorPassword.dart';
import 'package:sesion_8/features/Home/home.dart';
import 'package:sesion_8/features/InviteFriendv1/InviteFriend.dart';
import 'package:sesion_8/features/Myprofile/myprofile.dart';
import 'package:sesion_8/features/OrganizerProfile/OrganizerProfileAbout.dart';
import 'package:sesion_8/features/SeeAllEvents/SeeAllEvents.dart';
import 'package:sesion_8/features/Verification/Verification.dart';
import 'package:sesion_8/features/notification/Notification.dart';
import 'package:sesion_8/features/search/search.dart';
import 'package:sesion_8/features/splash_screen/screen_one.dart';
import 'package:sesion_8/features/signIn/SignIn.dart';
import 'package:sesion_8/features/signUp/SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        Signin.routName: (context) => Signin(),
        ForgotPassword.routName: (context) => ForgotPassword(),
        SignUp.routName: (context) => SignUp(),
        HomePages.routName: (context) => HomePages(),
        Verification.routName: (context) => Verification(),
        Myprofile.routName: (context) => Myprofile(),
        Search.routName: (context) => Search(),
        Filters.routName: (context) => Filters(),
        SeeAllEvents.routName: (context) => SeeAllEvents(),
        EmptyEvents.routName: (context) => EmptyEvents(),
        Notifications.routName: (context) => Notifications(),
        EventsDetails.routName: (context) => EventsDetails(),
        OrganizerProfile.routName: (context) => OrganizerProfile(),
        InviteFriend.routName: (context) => InviteFriend(),
      },
    );
  }
}
