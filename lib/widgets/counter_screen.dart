import 'package:flutter/material.dart';
import 'package:waka_clone/constant.dart';
import 'package:waka_clone/widgets/case_info.dart';
import 'package:waka_clone/widgets/locatio_select.dart';
import 'package:waka_clone/widgets/my_header.dart';

class CounterSreen extends StatelessWidget {
  const CounterSreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MyHeader(
            image: "assets/icons/Drcorona.svg",
            textTop: "all you need",
            textBottom: "is stay at home",
          ),
          LocationSelect(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //Case update
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Case update\n", style: kTitleTextstyle),
                          TextSpan(
                            text: "Newest update March 28",
                            style: TextStyle(color: kTextLightColor),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See details",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                //Case update sumary info
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 30,
                        color: kShadowColor,
                      )
                    ],
                    color: Colors.white,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CaseInfo(
                          label: "Inflected",
                          number: 1228,
                          color: kInfectedColor,
                        ),
                        CaseInfo(
                          label: "Deaths",
                          number: 87,
                          color: kDeathColor,
                        ),
                        CaseInfo(
                          label: "Recovered",
                          number: 46,
                          color: kRecovercolor,
                        ),
                      ]),
                ),
                const SizedBox(height: 20),
                //Spread of virus
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Spread of virus", style: kTitleTextstyle),
                    Text(
                      "See details",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //Map
                Container(
                  height: 180,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        offset: Offset(0, 10),
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/map.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
///