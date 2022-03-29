import 'package:flutter/material.dart';
import 'package:responsive_app/constants/app_colors.dart' as app_colors;

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: app_colors.primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text(
            'Skill Up Now',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          Text('TAP HERE', style: TextStyle(fontSize: 18, color: Colors.black)),
        ],
      ),
    );
  }
}
