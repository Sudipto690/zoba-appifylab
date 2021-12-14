import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zoba_flutter/main.dart';
import 'package:zoba_flutter/redux/action.dart';
import 'package:zoba_flutter/screen/assets/assetpath.dart';
import 'package:zoba_flutter/screen/home_screen/homepage.dart';
import 'package:zoba_flutter/screen/my_account/myaccount_page.dart';
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
    const urlImage = AssetPath.profile;
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            buildHeader(
              name: name,
              number: mail,
              urlImage: urlImage,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home,
                    onClicked: () {
                      selectedItem(context, 0);
                      store.dispatch(DrawerItemAction("HomePage"));
                    },
                    dividerColor: store.state.drawerItemState == "HomePage"
                        ? Colors.red
                        : Colors.white,
                    tColor: store.state.drawerItemState == "HomePage"
                        ? Colors.red
                        : Colors.grey,
                    iconColor: store.state.drawerItemState == "HomePage"
                        ? Colors.red
                        : Colors.grey,
                  ),
                  buildMenuItem(
                    text: 'New Collection',
                    icon: Icons.flag,
                    onClicked: () {
                      selectedItem(context, 1);
                      store.dispatch(DrawerItemAction("New Collection"));
                    },
                    dividerColor:
                        store.state.drawerItemState == "New Collection"
                            ? Colors.red
                            : Colors.white,
                    tColor: store.state.drawerItemState == "New Collection"
                        ? Colors.red
                        : Colors.grey,
                    iconColor: store.state.drawerItemState == "New Collection"
                        ? Colors.red
                        : Colors.grey,
                  ),
                  buildMenuItem(
                    text: 'Categories',
                    icon: Icons.category,
                    onClicked: () {
                      selectedItem(context, 2);
                      store.dispatch(DrawerItemAction("Categories"));
                    },
                    dividerColor: store.state.drawerItemState == "Categories"
                        ? Colors.red
                        : Colors.white,
                    tColor: store.state.drawerItemState == "Categorieson"
                        ? Colors.red
                        : Colors.grey,
                    iconColor: store.state.drawerItemState == "Categorieson"
                        ? Colors.red
                        : Colors.grey,
                  ),
                  buildMenuItem(
                    text: 'Notification',
                    icon: Icons.notification_add,
                    onClicked: () {
                      selectedItem(context, 3);
                      store.dispatch(DrawerItemAction("Notification"));
                    },
                    dividerColor: store.state.drawerItemState == "Notification"
                        ? Colors.red
                        : Colors.white,
                    tColor: store.state.drawerItemState == "Notification"
                        ? Colors.red
                        : Colors.grey,
                    iconColor: store.state.drawerItemState == "Notification"
                        ? Colors.red
                        : Colors.grey,
                  ),
                  buildMenuItem(
                    text: 'Settings',
                    icon: Icons.settings,
                    onClicked: () {
                      selectedItem(context, 4);
                      store.dispatch(DrawerItemAction("Settings"));
                    },
                    dividerColor: store.state.drawerItemState == "Settings"
                        ? Colors.red
                        : Colors.white,
                    tColor: store.state.drawerItemState == "Settings"
                        ? Colors.red
                        : Colors.grey,
                    iconColor: store.state.drawerItemState == "Settings"
                        ? Colors.red
                        : Colors.grey,
                  ),
                  buildMenuItem(
                    text: 'Help',
                    icon: Icons.help,
                    onClicked: () {
                      selectedItem(context, 5);
                      store.dispatch(DrawerItemAction("Help"));
                    },
                    dividerColor: store.state.drawerItemState == "Help"
                        ? Colors.red
                        : Colors.white,
                    tColor: store.state.drawerItemState == "Help"
                        ? Colors.red
                        : Colors.grey,
                    iconColor: store.state.drawerItemState == "Help"
                        ? Colors.red
                        : Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9.0, top: 15),
                    child: drawerLogout(
                        text: "Logout", icon: Icons.logout, onClicked: () {}),
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
      Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.only(left: 27, bottom: 25),
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const MyProfile()));
              },
              child: Text(name, style: KTextStyle.headline6),
            ),
            const SizedBox(height: 4),
            Text(
              number,
              style: const TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
        ),

        //),
      );
  Widget drawerLogout({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) {
    final hoverColor = Colors.white70;

    return ListTile(
      minVerticalPadding: 0,
      minLeadingWidth: 2,
      title: Row(
        children: [
          Icon(
            icon,
            size: 22,
            color: Colors.redAccent,
          ),
          const SizedBox(width: 15),
          Text(text,
              style: const TextStyle(color: Colors.redAccent, fontSize: 17)),
        ],
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
    required Color dividerColor,
    required Color tColor,
    required Color iconColor,
  }) {
    final hoverColor = Colors.white70;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      leading: VerticalDivider(
        color: dividerColor,
        thickness: 7,
        indent: 2,
        endIndent: 2,
        width: 5,
      ),
      minVerticalPadding: 0,
      minLeadingWidth: 2,
      title: Row(
        children: [
          Icon(
            icon,
            size: 22,
            color: iconColor,
          ),
          const SizedBox(width: 15),
          Text(text, style: TextStyle(color: tColor, fontSize: 17)),
        ],
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));

        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        break;
      case 3:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>const HomePage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        break;
    }
  }
}
