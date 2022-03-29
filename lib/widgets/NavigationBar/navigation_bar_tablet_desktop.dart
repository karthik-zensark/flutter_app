import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/NavigationBar/navbar_item.dart'
    as navbar_item;
import 'package:responsive_app/widgets/NavigationBar/navbar_logo.dart'
    as navbar_logo;

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const navbar_logo.NavBarLogo(),
          Row(mainAxisSize: MainAxisSize.min, children: const <Widget>[
            navbar_item.NavBarItem(title: 'Contact'),
            SizedBox(
              width: 60,
            ),
            navbar_item.NavBarItem(title: 'About')
          ])
        ],
      ),
    );
  }
}
