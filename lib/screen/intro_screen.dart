import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:zoba_flutter/constant/asset_path.dart';
import 'package:zoba_flutter/screen/auth/login_screen.dart';
import 'package:zoba_flutter/style/k_color.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class IntroductionScreens extends StatefulWidget {
  const IntroductionScreens({Key? key}) : super(key: key);

  @override
  _IntroductionScreensState createState() => _IntroductionScreensState();
}

class _IntroductionScreensState extends State<IntroductionScreens> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_const
    const pageDecoration = const PageDecoration(
      descriptionPadding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
      pageColor: kColor.primary,
      bodyAlignment: Alignment.topLeft,
      imageAlignment: Alignment.bottomLeft,
      imagePadding: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
    );
    return IntroductionScreen(
      key: introKey,
      onDone: () {
        // When done button is press
        _onIntroEnd(context);
      },
      onSkip: () {
        // You can also override onSkip callback
        _onIntroEnd(context);
      },
      showSkipButton: true,
      showNextButton: false,
      skip: const Text('Skip',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: kColor.secondary)),
      done: const Text("Done",
          style:
              TextStyle(fontWeight: FontWeight.w600, color: kColor.secondary)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(30.0, 10.0),
          activeColor: kColor.secondary,
          color: kColor.secondary,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
      dotsContainerDecorator: const ShapeDecoration(
        color: kColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      pages: [
        PageViewModel(
            titleWidget: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                ),
                child: Text(
                  "Free \nDelivery",
                  style: KTextStyle.headline5,
                ),
              ),
            ),
            //title: "Free \n Delivery",
            bodyWidget: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
                  style: KTextStyle.bodyText1),
            ),
            image: Image.asset(
              AssetPath.handWithDollar,
              height: 175.0,
              color: kColor.secondary,
            ),
            decoration: pageDecoration),
        PageViewModel(
            titleWidget: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                ),
                child: Text(
                  "45 Money \nReturn",
                  style:KTextStyle.headline5,
                ),
              ),
            ),
            //   title: "45 Money \nReturn",
            bodyWidget: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
                  style: KTextStyle.bodyText1),
            ),
            image: Image.asset(
              AssetPath.deliveryTruck,
              height: 175.0,
              color: kColor.secondary,
            ),
            decoration: pageDecoration),
        PageViewModel(
            titleWidget: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                ),
                child: Text(
                  "Secure \nPayment",
                  style: KTextStyle.headline5,
                ),
              ),
            ),
            //title: "Secure \n Payment",
            bodyWidget: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
                  style: KTextStyle.bodyText1),
            ),
            // body:
            //     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
            image: Image.asset(
              AssetPath.creditCard,
              height:KSize.getHeight(context, 175),
              color: kColor.secondary,
            ),
            decoration: pageDecoration),
      ],
    );
  }
}
