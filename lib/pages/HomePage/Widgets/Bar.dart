import 'package:flutter/material.dart';
import "package:flutter_svg/svg.dart";
import 'package:get/get.dart';
import 'package:mobile_parmesan/config/Colors.dart';
import 'package:mobile_parmesan/pages/UserProfile.dart';
class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        SvgPicture.asset("Assets/Icons/dashboard.svg"),
        Text("Parmesan",style:
        Theme.of(context).textTheme.headlineMedium,),
        InkWell(
          onTap: (){Get.to(UserProfile());},
            child: CircleAvatar(
              backgroundColor:Theme.of(context).colorScheme.background,
              child:const Text("Kr"
                ,style: TextStyle(color: primaryColor),),
            ),
        )
      ],
    );

  }
}