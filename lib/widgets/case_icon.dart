import 'package:flutter/material.dart';

class CaseIcon extends StatelessWidget {
  final Color iconColor;
  final double width;
  final double height;
  const CaseIcon({
    Key? key,
    required this.iconColor,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: iconColor.withOpacity(0.3),
      ),
      child: Container(
        height: height / 2,
        width: width / 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(
            color: iconColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
///