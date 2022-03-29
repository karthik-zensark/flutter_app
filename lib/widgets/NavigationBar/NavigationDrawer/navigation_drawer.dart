import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/NavigationBar/NavigationDrawer/drawer_item.dart'
    as drawer_item;
import 'package:responsive_app/widgets/NavigationBar/NavigationDrawer/navigation_drawer_header.dart'
    as nav_drawer_header;

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.black87,
        boxShadow: [BoxShadow(color: Colors.black87, blurRadius: 16, blurStyle: BlurStyle.solid)],
      ),
      child: Column(
        children: const <Widget>[
          nav_drawer_header.NavigationDrawerHeader(),
          drawer_item.DrawerItem(
              title: "Contact", icon: Icons.contact_page_rounded),
          drawer_item.DrawerItem(
            title: 'About',
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
