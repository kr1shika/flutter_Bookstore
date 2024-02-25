import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  final String iconPath;
  final String btnName;
  const Categories({super.key, required this.iconPath,required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(right: 10.0),
    child: InkWell(onTap: (){},
        child:  Container(
          padding:const EdgeInsets.symmetric(
              horizontal: 9, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Theme.of(context).colorScheme.primary,
            border: Border.all(
              color: Theme.of(context)
                  .colorScheme
                  .background, // Set your desired border color here
              width: 2, // Set the border width
            ),
          )
          ,
          child: Row(children: [
            SvgPicture.asset(iconPath),
            const SizedBox(width: 10),
            Text(btnName)
          ],
          ),
        )
    ),);
  }
}
