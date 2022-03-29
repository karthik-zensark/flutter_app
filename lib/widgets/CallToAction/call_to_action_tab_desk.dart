import 'package:flutter/material.dart';
import 'package:responsive_app/constants/app_colors.dart' as app_colors;

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
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
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
