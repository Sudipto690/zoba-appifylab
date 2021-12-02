import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zoba_flutter/screen/home_screen/homepage.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class DrawerWidgetLogIn extends StatefulWidget {
  const DrawerWidgetLogIn({Key? key}) : super(key: key);

  @override
  _DrawerWidgetLogInState createState() => _DrawerWidgetLogInState();
}

class _DrawerWidgetLogInState extends State<DrawerWidgetLogIn> {
  @override
  Widget build(BuildContext context) {
    const name = "Sudipto";
    const mail = "sudiptosarker05@gmail.cm";
    const urlImage = "assets/shoe.jpeg";
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            buildHeader(
              name: name,
              number: mail,
              urlImage: "$urlImage",
            ),
            Container(
              child: Column(
                children: [
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home_outlined,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  buildMenuItem(
                    text: 'New Collection',
                    icon: Icons.person_outline_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  buildMenuItem(
                    text: 'Categories',
                    icon: Icons.notifications_none_outlined,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  buildMenuItem(
                    text: 'Notification',
                    icon: Icons.add_shopping_cart_sharp,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  buildMenuItem(
                    text: 'Settings',
                    icon: Icons.receipt_long_outlined,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  buildMenuItem(
                    text: 'Help',
                    icon: Icons.call,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  buildMenuItem(
                    text: 'logout',
                    icon: Icons.logout,
                    onClicked: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String number,
    //required VoidCallback onClicked,
  }) =>
      //InkWell(
      //onTap: onClicked,
      //child:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const FaIcon(FontAwesomeIcons.times))
                ],
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(urlImage)),
                    borderRadius: BorderRadius.circular(45)),
              ),
              Text(name, style: KTextStyle.headline6),
              const SizedBox(height: 4),
              Text(
                number,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),

          //),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) {
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(text, style: TextStyle(color: Colors.grey)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));

        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
    }
  }
}
