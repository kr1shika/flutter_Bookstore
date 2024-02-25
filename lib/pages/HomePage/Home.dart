import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mobile_parmesan/Components/BookCard.dart';
import 'package:mobile_parmesan/Models/Data.dart';
import 'package:mobile_parmesan/config/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_parmesan/pages/HomePage/BookDetailspage/BookInfo.dart';
import 'package:mobile_parmesan/pages/HomePage/Widgets/Bar.dart';
import 'package:mobile_parmesan/pages/HomePage/Widgets/Categories.dart';
import 'package:mobile_parmesan/pages/HomePage/Widgets/Search.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(children: [
          Container(
            padding: EdgeInsets.all(10),
            color: primaryColor,
            height: 360,
            child: Expanded(
              child: Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        SizedBox(height: 30),
                        Bar(),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              "Welcome Back",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .background,
                              ),
                            ),

                          ],
                        ),

                        SizedBox(height: 5),
                        // Row(children: [
                        //   Flexible(child:
                        //   Text(
                        //     "Quote of the week: I am all in a sea of wonders. I doubt; I fear; I think strange things which I dare not confess to my own soul.",
                        //     style: Theme.of(context).textTheme
                        //         .labelSmall?.copyWith(
                        //       color: Theme.of(context).colorScheme.background,
                        //     ),
                        //   )
                        //   )
                        // ],),
                        SizedBox(height: 16,),
                        Search(),
                        SizedBox(height: 30,),
                        Row( children: [
                          Text("CATEGORIES",
                            style: Theme.of(context).textTheme.labelMedium
                                ?.copyWith(color:backgroudColor),)
                        ],

                        ),
                        SizedBox(height: 20,),

                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData.map((e) => Categories(iconPath: e["icon"]!, btnName: e["lebel"]!),
                              ).toList(),


                            )
                        )


                      ],))
                  ]),


            ),

          ),
          SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.all(10),

            child: Column(
                children:[
                  Row(
                    children: [Text("TRENDING BOOKS",
                        style: Theme.of(context).textTheme
                            .labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ))],
                  ),
                  SizedBox(height: 18,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Row(
                        children: bookData.map((e) => BookCard(coverUrl: e.coverUrl!,ontap: () {
                          Get.to(BookInfo(
                            book: e,
                          ));
                        },title: e.title!,

                        ),).toList()
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),

                    // SizedBox(height: 10),
                    // Obx(() => Column(
                    //   children: bookController.bookData
                    //       .map(
                    //         (e) => BookTile(
                    //       ontap: () {
                    //         Get.to(BookDetails(book: e));
                    //       },
                    //       title: e.title!,
                    //       coverUrl: e.coverUrl!,
                    //       author: e.author!,
                    //       price: e.price!,
                    //       rating: e.rating!,
                    //       totalRating: 12,
                    //     ),
                    //   )
                    //       .toList(),
                    // )
                ]
            ),

          )



        ]
      )
     ),
    );
  }
}