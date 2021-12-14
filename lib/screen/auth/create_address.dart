import 'package:flutter/material.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/global_component/k_text_field.dart';
import 'package:zoba_flutter/global_component/kbutton.dart';
import 'package:zoba_flutter/style/k_color.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class CreateAddress extends StatefulWidget {
  const CreateAddress({Key? key}) : super(key: key);

  @override
  _CreateAddressState createState() => _CreateAddressState();
}

class _CreateAddressState extends State<CreateAddress> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

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
        appBar: KAppBar(
          leadingicon: Icons.arrow_back,
          leadiconpress: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create Address',
                    style: KTextStyle.headline6
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 30,
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
                        GlobalTextField.normaltextfield('Address', 10,
                            'Enter Full Address', '123 California USA'),
                        const SizedBox(
                          height: 15,
                        ),
                        GlobalTextField.normaltextfield(
                            'City', 2, 'Enter City Name', 'Egypt'),
                        const SizedBox(
                          height: 15,
                        ),
                        GlobalTextField.normaltextfield(
                            'State', 2, 'Enter State Name', 'Turosko'),
                        const SizedBox(
                          height: 15,
                        ),
                        GlobalTextField.normaltextfield(
                            'Postal Code', 2, 'Enter Postal Code', '+123'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: KSize.getHeight(context, 15),
            right: KSize.getHeight(context, 15),
            top: KSize.getHeight(context, 5),
            bottom: KSize.getHeight(context, 5),
          ),
          child: Kbutton(
            getWidth: KSize.getWidth(context, 180),
            getHeight: KSize.getHeight(context, 60),
            text: "CREATE NEW ADDRESS",
            cdColor: Colors.redAccent,
            dbColor: Colors.redAccent,
            kbuttonTap: () {},
            tcolor: Colors.white,
          ),
        ));
  }
}
