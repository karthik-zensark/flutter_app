import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/CallToAction/call_to_action.dart'
    as call_to_action;
import 'package:responsive_app/widgets/CourseDetails/course_details.dart'
    as course_details;

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        course_details.CourseDetails(),
        Expanded(
            child: Center(
          child: call_to_action.CallToAction(title: 'Join Course'),
        ))
      ],
    );
  }
}
