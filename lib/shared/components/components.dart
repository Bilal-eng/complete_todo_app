import 'package:flutter/material.dart';

Widget defaultFormField(
        {required TextEditingController controller,
        required TextInputType type,
        bool isClickable = true,
        Function(String)? onSubmit,
        Function(String)? onChange,
        Function()? onTap,
        bool isPassowrd = false,
        required String? Function(String?) validate,
        required String label,
        required IconData prefix,
        Function()? suffixPressed,
        IconData? suffix}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      obscureText: isPassowrd,
      onChanged: onChange,
      validator: validate,
      enabled: isClickable,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: IconButton(
          icon: Icon(suffix),
          onPressed: suffixPressed,
        ),
        border: OutlineInputBorder(),
      ),
    );
