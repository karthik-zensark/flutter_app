import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/CallToAction/call_to_action.dart'
    as call_to_action;
import 'package:responsive_app/widgets/CourseDetails/course_details.dart'
    as course_details;

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        course_details.CourseDetails(),
        SizedBox(
          height: 100,
        ),
        call_to_action.CallToAction(title: 'Join Course')
      ],
    );
  }
}
