import 'package:flutter/material.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class GlobalTextField {
  static Widget emailtextfield() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: KTextStyle.headline6),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: KTextStyle.bodyText2,
          onSaved: (input) {},
          validator: (input) =>
              !input!.contains("@") ? "Email Id should be valid" : null,
          decoration: const InputDecoration(
            hintText: "Hello admin@gmail.com",
          ),
        ),
      ],
    );
  }

  static Widget normaltextfield(
      String label, int strLimit, String errorText, String hint2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: KTextStyle.headline6),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: KTextStyle.bodyText2,
          onSaved: (input) {},
          validator: (input) => input!.length < strLimit ? errorText : null,
          decoration: InputDecoration(
            hintText: hint2,
          ),
        ),
      ],
    );
  }

  static Widget passwordfield(bool hidePassword, Function hide) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password', style: KTextStyle.headline6),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          obscureText: hidePassword,
          style: KTextStyle.bodyText2,
          onSaved: (input) {}, // password = input,
          validator: (input) => input!.length < 6
              ? "Passwords shoulb be more than 6 characters"
              : null,
          decoration: InputDecoration(
            hintText: "•••••••••••",
            suffixIcon: IconButton(
              onPressed: hide(),
              color: Colors.white,
              icon: Icon(
                hidePassword ? Icons.visibility_off : Icons.visibility,
                color: const Color(0xFF9493A1),
              ),
            ),
            // suffixIcon:
          ),
        ),
      ],
    );
  }
}
