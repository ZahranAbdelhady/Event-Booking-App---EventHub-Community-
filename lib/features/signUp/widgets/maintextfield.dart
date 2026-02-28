import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';

TextFormField Maintextfield(TextEditingController email) {
  return TextFormField(
    controller: email,

    decoration: InputDecoration(
      iconColor: AppColors.primaryWhite,
      prefixIcon: Icon(Icons.email),
      hint: Text("zahran@gmail.com"),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: AppColors.primaryWhite),
      ),
    ),
    validator: (value) {
      if (value == null) {
        return "Email is not value";
      }
      if (value!.isEmpty) {
        return "Email is not value";
      }
      if (!value.contains("@gmail.com")) {
        return "email not's @gmail.com";
      }
      return null;
    },
  );
}

TextFormField Maintextfieldpass(TextEditingController password) {
  return TextFormField(
    controller: password,
    obscureText: true,
    obscuringCharacter: "*",
    decoration: InputDecoration(
      iconColor: AppColors.primaryWhite,
      prefixIcon: Icon(Icons.lock),
      hint: Text("Your password"),
      suffixIcon: Icon(Icons.visibility_off),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: AppColors.primaryWhite),
      ),
    ),

    validator: (value) {
      if (value == null) {
        return "password is not value";
      }
      if (value!.isEmpty) {
        return "passord is not value";
      }
      if (value.length < 6) {
        return "password less than 6 chart or numbers";
      }
      return null;
    },
  );
}

TextFormField Maintextfieldconfpass(TextEditingController confirmpassword) {
  return TextFormField(
    controller: confirmpassword,
    obscureText: true,
    obscuringCharacter: "*",
    decoration: InputDecoration(
      iconColor: AppColors.primaryWhite,
      prefixIcon: Icon(Icons.lock),
      hint: Text("Confirm password"),
      suffixIcon: Icon(Icons.visibility_off),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: AppColors.primaryWhite),
      ),
    ),
    validator: (value) {
      if (value == null) {
        return "password is not value";
      }
      if (value!.isEmpty) {
        return "passord is not value";
      }
      if (value.length < 6) {
        return "password less than 6 chart or numbers";
      }
      return null;
    },
  );
}

TextFormField Maintextfieldperson(TextEditingController person) {
  return TextFormField(
    controller: person,

    decoration: InputDecoration(
      iconColor: AppColors.primaryWhite,
      prefixIcon: Icon(Icons.person),
      hint: Text("Full name"),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: AppColors.primaryWhite),
      ),
    ),
    validator: (value) {
      if (value == null || value!.isEmpty) {
        return "name isempty value";
      }
      return null;
    },
  );
}
