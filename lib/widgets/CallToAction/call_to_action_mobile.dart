import 'package:flutter/material.dart';
import 'package:responsive_app/constants/app_colors.dart' as app_colors;

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
        color: app_colors.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
