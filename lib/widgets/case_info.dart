import 'package:flutter/material.dart';
import 'package:waka_clone/constant.dart';
import 'package:waka_clone/widgets/case_icon.dart';

class CaseInfo extends StatelessWidget {
  final String label;
  final int number;
  final Color color;
  const CaseInfo(
      {Key? key, this.number = 0, this.label = "", this.color = kPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CaseIcon(
          width: 25,
          height: 25,
          iconColor: color,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          number.toString(),
          style: TextStyle(
              color: color, fontWeight: FontWeight.w400, fontSize: 40),
        ),
        Text(label, style: kSubTextStyle),
      ],
    );
  }
}
///
