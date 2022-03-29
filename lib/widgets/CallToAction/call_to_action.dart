import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/CallToAction/call_to_action_mobile.dart'
    as call_to_action_mob;
import 'package:responsive_app/widgets/CallToAction/call_to_action_tab_desk.dart'
    as call_to_action_t_d;
import 'package:responsive_builder/responsive_builder.dart'
    as responsive_builder;

class CallToAction extends StatelessWidget {
  const CallToAction({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return responsive_builder.ScreenTypeLayout(
      mobile: call_to_action_mob.CallToActionMobile(title: title),
      tablet: call_to_action_t_d.CallToActionTabletDesktop(title: title),
    );
  }
}
