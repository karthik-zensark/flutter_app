import 'package:flutter/material.dart';
import 'package:responsive_app/locator.dart' as locator;
import 'package:responsive_app/routing/route_names.dart' as route_names;
import 'package:responsive_app/services/navigation_service.dart' as nav_service;
import 'package:responsive_app/widgets/CenteredView/centered_view.dart'
    as centered_view;
import 'package:responsive_app/widgets/NavigationBar/NavigationDrawer/navigation_drawer.dart'
    as navigation_drawer;
import 'package:responsive_app/widgets/NavigationBar/navigation_bar.dart'
    as navigation_bar;
import 'package:responsive_builder/responsive_builder.dart'
    as responsive_builder;

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return responsive_builder.ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
            drawer: sizingInformation.isMobile
                ? const navigation_drawer.NavigationDrawer()
                : null,
            backgroundColor: Colors.black87,
            body: centered_view.CenteredView(
                child: Column(
              children: <Widget>[
                const navigation_bar.NavigationBar(),
                Expanded(
                  child: Navigator(
                    key: locator
                        .locator<nav_service.NavigationService>()
                        .navigatorKey,
                    onGenerateRoute: route_names.generateRoute,
                    initialRoute: route_names.homeRoute,
                  ),
                )
              ],
            ))));
  }
}
