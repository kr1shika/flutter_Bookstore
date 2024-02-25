import 'package:flutter/material.dart';
import 'package:mobile_parmesan/Components/textFormField.dart';
import 'package:mobile_parmesan/config/Colors.dart';

import '../Components/BackButton.dart';

class AddBook extends StatelessWidget {
  const AddBook ({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller= TextEditingController();
    return Scaffold(body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            // height: 500,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            color: Theme.of(context).colorScheme.primary,
            child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyBackButton(),
                        Text(
                          "Add New Book",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                            color:
                            Theme.of(context).colorScheme.background,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              // authController.signout();
                            },
                            icon: Icon(
                              Icons.exit_to_app,
                              color: Theme.of(context).colorScheme.background,
                            ))
                      ],
                    ),
                    SizedBox(height: 25),

                    Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Theme.of(context).colorScheme.secondary,),
                     
                      child: Icon(Icons.add),
                    ),


                    SizedBox(height: 8),

                    Text(
                      // "${authController.auth.currentUser!.email}",
                      "Add Book Cover",
                      style:
                      Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .background,
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(height: 10,),
                    textFormField(hintText: "Book",
                        icon: Icons.book,
                        controller: controller),
                SizedBox(height: 15,),
                textFormField(hintText: "Author Name",
                    icon: Icons.person,
                    controller: controller),
                SizedBox(height: 15,),
                Row(children: [
                  Expanded(child: textFormField(hintText: "Pages",
                      icon: Icons.book,
                      controller: controller),

                    ),
                  Expanded(child: textFormField(hintText: "Price",
                      icon: Icons.currency_rupee_outlined,
                      controller: controller),

                  )


                ],),
                textFormField(hintText: "Language",
                    icon: Icons.book,
                    controller: controller),
                textFormField(hintText: "Audio Lenght",
                    icon: Icons.earbuds,
                    controller: controller),
              ],

            ),
          ),
        ],
      ),
    ),


    );
  }
}
