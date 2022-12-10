import 'package:flutter/material.dart';
import 'package:waka_clone/constant.dart';
import 'package:waka_clone/widgets/counter_screen.dart';
import 'package:waka_clone/widgets/my_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //CounterSreen(),
          SingleChildScrollView(
        child: Column(
          children: [
            const MyHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "Get to know",
              textBottom: "Abount Covid-19.",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Symtomps", style: kTitleTextstyle),
                  Container(
                    child: Row(
                      children: [],
                    ),
                  ),
                  Text("Prevention", style: kTitleTextstyle),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//

