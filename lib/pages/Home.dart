import 'package:flutter/material.dart';
import 'package:mobile_parmesan/config/Colors.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            color: backgroudColor,
            height: 500,
          child: Row(
            children: [
              Column(
                children: [
                  Column(children: [Text("hello")],)
                ],
              )
            ],

          ),
        )
      ]),
    );
  }
}