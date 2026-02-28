import 'package:flutter/material.dart';
import 'package:sesion_8/features/signIn/SignIn.dart';
import 'package:sesion_8/features/signIn/widgets/mainbutton.dart';
import 'package:sesion_8/features/signUp/widgets/maintextfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  static const routName = "ForgotPassword";

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();

    GlobalKey<FormState> forgetpass = GlobalKey();

    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Form(
            key: forgetpass,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "Resset Password",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                SizedBox(height: 15),
                Text(
                  "Please enter your email address to\nrequest a password reset ",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(height: 30),
                Maintextfield(email),
                SizedBox(height: 50),
                Center(
                  child: Mainbuttonpush(
                    formstate: forgetpass,
                    text: "SEND",
                    nameScreen: Signin.routName,
                    iconer: Icons.arrow_forward,
                    onTap: () {
                      if (forgetpass.currentState!.validate()) {
                        Navigator.pushNamed(context, Signin.routName);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
