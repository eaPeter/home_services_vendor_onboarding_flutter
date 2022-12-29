import 'package:flutter/material.dart';

class TakePhotoWidget extends StatelessWidget {
  const TakePhotoWidget({
    super.key,
    required this.icon,
    required this.title,
    this.subTitle,
  });

  final Icon icon;
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      height: 100,
      width: screenwidth * 0.5 - 32,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(title),
          Text(subTitle ?? ""),
        ],
      ),
    );
  }
}
