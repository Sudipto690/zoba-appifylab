import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:zoba_flutter/global_component/k_text_field.dart';
import 'package:zoba_flutter/global_component/kbutton.dart';
import 'package:zoba_flutter/screen/auth/login_screen.dart';
import 'package:zoba_flutter/style/k_color.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool hidePassword = true;

  bool validateAndSave() {
    final form = globalKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor.secondary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Signup',
                  style: KTextStyle.headline6
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 60,
                ),
                Form(
                  key: globalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GlobalTextField.normaltextfield(
                          'Name', 6, 'Enter Full Name', 'Adam Tawfik'),
                      const SizedBox(
                        height: 15,
                      ),
                      GlobalTextField.emailtextfield(),
                      const SizedBox(
                        height: 15,
                      ),
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
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                            color: kColor.secondary,
                            icon: Icon(
                              hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: kColor.textFieldLabel,
                            ),
                          ),
                          // suffixIcon:
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Kbutton(
                  getHeight: KSize.getHeight(context, 60),
                  getWidth: KSize.getWidth(context, 370),
                  text: "SIGNUP",
                  cdColor: Colors.redAccent,
                  dbColor: Colors.redAccent,
                  tcolor: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Already have an account? ",
                          style: const TextStyle(color: kColor.accentColor),
                          children: [
                            TextSpan(
                                text: "Sign In ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kColor.primary),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen()));
                                  }),
                          ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
