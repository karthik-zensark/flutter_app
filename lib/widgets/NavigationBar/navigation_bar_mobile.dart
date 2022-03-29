import 'package:flutter/material.dart';
// import 'package:responsive_app/views/home_view.dart' as home_view;
// import 'package:responsive_app/widgets/NavigationBar/NavigationDrawer/navigation_drawer.dart';
import 'package:responsive_app/widgets/NavigationBar/navbar_logo.dart'
    as navbar_logo;

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // key: home_view.HomeView,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          const navbar_logo.NavBarLogo()
        ],
      ),
    );
  }
}
