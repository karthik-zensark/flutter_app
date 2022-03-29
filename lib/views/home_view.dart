import 'package:flutter/material.dart';
import 'package:responsive_app/views/home_content_desktop.dart'
    as home_content_desk;
import 'package:responsive_app/views/home_content_mobile.dart'
    as home_content_mob;
import 'package:responsive_builder/responsive_builder.dart'
    as responsive_builder;

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return responsive_builder.ScreenTypeLayout(
      mobile: const home_content_mob.HomeContentMobile(),
      desktop: const home_content_desk.HomeContentDesktop(),
    );
  }
}
