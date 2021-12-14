import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:zoba_flutter/redux/reducer.dart';
import 'package:zoba_flutter/redux/state.dart';
import 'package:zoba_flutter/screen/intro_screen.dart';
import 'package:zoba_flutter/style/k_color.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

final store = Store<AppState>(reducer,
    initialState: AppState(
      isLoadingState: true,
      drawerItemState: null,
    ));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (BuildContext c, AsyncSnapshot<dynamic> s) =>
                s.connectionState != ConnectionState.done
                    ? Scaffold(
                        backgroundColor: kColor.primary,
                        body: Center(
                          child: Text(
                            "Zoba .",
                            style: KTextStyle.headline3,

                            // TextStyle(fontSize: 40,color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : const IntroductionScreens()));
  }
}
