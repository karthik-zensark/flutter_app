import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart'
    as responsive_builder;

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return responsive_builder.ResponsiveBuilder(
        builder: (context, sizingInformation) {
      var headText = sizingInformation.deviceScreenType ==
              responsive_builder.DeviceScreenType.tablet
          ? '  FLUTTER WEB.\n THE BASICS'
          : 'FLUTTER WEB.\nTHE BASICS';
      var textAlignment = sizingInformation.deviceScreenType ==
              responsive_builder.DeviceScreenType.desktop
          ? TextAlign.left
          : TextAlign.center;
      double titleSize = sizingInformation.deviceScreenType ==
              responsive_builder.DeviceScreenType.mobile
          ? 50
          : 80;
      double descriptionSize = sizingInformation.deviceScreenType ==
              responsive_builder.DeviceScreenType.mobile
          ? 16
          : 21;
      return SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              headText,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: titleSize,
                height: 0.9,
                color: Colors.white,
              ),
              textAlign: textAlignment,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
              style: TextStyle(
                  fontSize: descriptionSize, height: 1.7, color: Colors.white),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}
