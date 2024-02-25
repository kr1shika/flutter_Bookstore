import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile_parmesan/Components/biggerTextField.dart';
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
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: [
                        Icon(Icons.upload_file_rounded),
                              Text("Book PDF"),
                  ],
                ),)],),



                SizedBox(height: 15,),
                    textFormField(hintText: "Book",
                        icon: Icons.book,
                        controller: controller),
                SizedBox(height: 16,),

                biggerTextField(hintText: "Synopsis", icon: Icons.read_more, controller: controller),
                SizedBox(height: 16,),
                textFormField(hintText: "Author Name",
                    icon: Icons.person,
                    controller: controller),
                SizedBox(height: 16,),
                Row(children: [
                  Expanded(child: textFormField(hintText: "Pages",
                      icon: Icons.book,
                      controller: controller),

                    ),
                  SizedBox(width: 12,) ,
                  Expanded(child: textFormField(hintText: "Price",
                      icon: Icons.currency_rupee_outlined,
                      controller: controller),

                  )


                ],),
                SizedBox(height: 17,) ,
                Row(children: [
                  Expanded(child: textFormField(hintText: "Language",
                      icon: Icons.voice_chat,
                      controller: controller),

                  ),
                   SizedBox(width: 12,) ,
                  Expanded(child: textFormField(hintText: "Audio lenght",
                      icon: Icons.audio_file,
                      controller: controller),

                  )


                ],),
                SizedBox(height: 10,),
                textFormField(hintText: "About Author",
                    icon: Icons.book,
                    controller: controller),

              //
              //   SizedBox(height: 20),
                //                 Row(
                //                   children: [
                //                     Expanded(
                //                       child: Container(
                //                         padding: EdgeInsets.all(16),
                //                         decoration: BoxDecoration(
                //                             borderRadius: BorderRadius.circular(10),
                //                             border: Border.all(
                //                               width: 2,
                //                               color: Colors.red,
                //                             )),
                //                         child: Row(
                //                           mainAxisAlignment: MainAxisAlignment.center,
                //                           children: [
                //                             Icon(
                //                               Icons.close,
                //                               color: Colors.red,
                //                             ),
                //                             SizedBox(width: 8),
                //                             Text(
                //                               "CANCLE",
                //                               style: Theme.of(context)
                //                                   .textTheme
                //                                   .bodyLarge
                //                                   ?.copyWith(
                //                                     color: Colors.red,
                //                                   ),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                     ),
                //                     SizedBox(width: 10),
                //                     Expanded(
                //                         child: Obx(
                //                       () => Container(
                //                         padding: EdgeInsets.all(16),
                //                         decoration: BoxDecoration(
                //                           color: Theme.of(context).colorScheme.primary,
                //                           borderRadius: BorderRadius.circular(10),
                //                         ),
                //                         child: bookController.isPdfUploading.value
                //                             ? Center(
                //                                 child: CircularProgressIndicator(),
                //                               )
                //                             : InkWell(
                //                                 onTap: () {
                //                                   bookController.createBook();
                //                                 },
                //                                 child: Row(
                //                                   mainAxisAlignment: MainAxisAlignment.center,
                //                                   children: [
                //                                     Icon(
                //                                       Icons.upload_sharp,
                //                                       color: Theme.of(context)
                //                                           .colorScheme
                //                                           .background,
                //                                     ),
                //                                     SizedBox(width: 8),
                //                                     Text(
                //                                       "POST",
                //                                       style: Theme.of(context)
                //                                           .textTheme
                //                                           .bodyLarge
                //                                           ?.copyWith(
                //                                             color: Theme.of(context)
                //                                                 .colorScheme
                //                                                 .background,
                //                                           ),
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                       ),
                //                     )),

           ] ),
          ),
        ],
      ),

    ),


    );
  }
}
