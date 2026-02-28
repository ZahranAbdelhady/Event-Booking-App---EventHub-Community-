import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/Verification/Verification.dart';
import 'package:sesion_8/features/signIn/SignIn.dart';
import 'package:sesion_8/features/signIn/funcIcons.dart';
import 'package:sesion_8/features/signIn/widgets/mainbutton.dart';
import 'package:sesion_8/features/signUp/widgets/maintextfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  static const routName = "SignUp";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController person = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();

    GlobalKey<FormState> signUpkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: signUpkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign up", style: AppStyles.w400s24black),
                SizedBox(height: 25),
                Maintextfieldperson(person),
                SizedBox(height: 25),
                Maintextfield(email),
                SizedBox(height: 25),
                Maintextfieldpass(password),
                SizedBox(height: 25),
                Maintextfieldconfpass(confirmpassword),
                SizedBox(height: 40),
                Center(
                  child: Mainbuttonpush(
                    formstate: signUpkey,
                    text: "Sign Up",
                    nameScreen: Verification.routName,
                    iconer: Icons.arrow_forward,
                    onTap: () {
                      if (signUpkey.currentState!.validate()) {
                        Navigator.pushNamed(context, Verification.routName);
                      }
                    },
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "OR",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      containerIcons("Login With Google", AppImages.Google),
                      SizedBox(height: 8),
                      containerIcons("Login With Facebook", AppImages.facebook),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: AppStyles.w400s16TextIconblack,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed((context), Signin.routName);
                            },
                            child: Text(
                              "Signin",
                              style: AppStyles.w400s16TextIconblue,
                            ),
                          ),
                        ],
                      ),
                    ],
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
