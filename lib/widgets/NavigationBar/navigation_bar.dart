import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/NavigationBar/navigation_bar_mobile.dart'
    as navigation_bar_mobile;
import 'package:responsive_app/widgets/NavigationBar/navigation_bar_tablet_desktop.dart'
    as navigation_bar_t_d;
import 'package:responsive_builder/responsive_builder.dart'
    as responsive_builder;

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return responsive_builder.ScreenTypeLayout(
      mobile: const navigation_bar_mobile.NavigationBarMobile(),
      tablet: const navigation_bar_t_d.NavigationBarTabletDesktop(),
    );
  }
}
