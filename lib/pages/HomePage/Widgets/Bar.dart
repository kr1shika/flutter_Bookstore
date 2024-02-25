import 'package:flutter/material.dart';
import "package:flutter_svg/svg.dart";
import 'package:mobile_parmesan/config/Colors.dart';
class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        SvgPicture.asset("Assets/Icons/dashboard.svg"),
        Text("Parmesan",style:
        Theme.of(context).textTheme.headlineMedium,),
        CircleAvatar(
          backgroundColor:Theme.of(context).colorScheme.background,
          child:const Text("Kr"
            ,style: TextStyle(color: primaryColor),),
        )
      ],
    );

  }
}