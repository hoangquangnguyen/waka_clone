import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waka_clone/constant.dart';

class LocationSelect extends StatefulWidget {
  @override
  State<LocationSelect> createState() => _LocationSelectState();
}

class _LocationSelectState extends State<LocationSelect> {
  String _selectedValue = "Indonesia";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: kBodyTextColor),
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/maps-and-flags.svg"),
          SizedBox(width: 20),
          Expanded(
            child: DropdownButton(
              isExpanded: true,
              underline: SizedBox(),
              icon: SvgPicture.asset("assets/icons/dropdown.svg"),
              value: _selectedValue,
              items: ['Indonesia', 'Bangladesh', 'United States', 'Japan']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
