import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile_parmesan/Components/biggerTextField.dart';
import 'package:mobile_parmesan/Components/textFormField.dart';
import 'package:mobile_parmesan/Controller/BookController.dart';
import 'package:mobile_parmesan/Controller/pdfController.dart';
import 'package:mobile_parmesan/config/Colors.dart';

import '../Components/BackButton.dart';

class AddBook extends StatelessWidget {
  const AddBook ({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller= TextEditingController();
    PdfController pdfController=Get.put(PdfController());
    BookController bookController=Get.put(BookController());
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

                    InkWell(
                        onTap: () {
                          bookController.pickImage();
                        },
                        child: Obx(
                              () => Container(
                            height: 190,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).colorScheme.background,
                            ),
                              child: Center(
                              child: bookController.isImageUploading.value
                                  ? CircularProgressIndicator(
                                color: primaryColor,
                              )
                                  : bookController.imageUrl.value == ""
                                  ? Image.asset(
                                  "Assets/Icons/addImage.png")
                                  : ClipRRect(
                                borderRadius:
                                BorderRadius.circular(10),
                                    child: Image.network(
                                    bookController.imageUrl.value,
                                      fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )),


                    SizedBox(height: 8),

                    Text(

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
                Row(
                  children: [
                    Expanded(
                      child: Obx(
                            () => Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: bookController.pdfUrl.value == ""
                                ? Theme.of(context).colorScheme.background
                                : Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: bookController.isPdfUploading.value
                              ? Center(
                            child: CircularProgressIndicator(
                              color: backgroudColor,
                            ),
                          )
                              : bookController.pdfUrl.value == ""
                              ? InkWell(
                            onTap: () {
                              bookController.pickPDF();
                            },
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "Assets/Icons/upload.png"),
                                SizedBox(width: 8),
                                Text(
                                  "Book PDF",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primary,
                                  ),
                                ),
                              ],
                            ),
                          )
                              : InkWell(
                            onTap: () {
                              bookController.pdfUrl.value = "";
                            },
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "Assets/Icons/delete.png",
                                  width: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Delete Pdf",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),



                SizedBox(height: 15,),
                    textFormField(hintText: "Title",
                        icon: Icons.book,
                        controller: bookController.title),
                SizedBox(height: 16,),

                biggerTextField(hintText: "Synopsis", icon: Icons.read_more, controller: bookController.des),
                SizedBox(height: 16,),
                textFormField(hintText: "Author Name",
                    icon: Icons.person,
                    controller: bookController.auth),
                SizedBox(height: 16,),
                Row(children: [
                  // Expanded(child: textFormField(hintText: "Pages",
                  //     icon: Icons.book,
                  //     controller: bookController.pages),
                  //
                  //   ),
                  SizedBox(width: 20,) ,
                  // Expanded(child: textFormField(hintText: "Price",
                  //     icon: Icons.currency_rupee_outlined,
                  //     controller: bookController.price),
                  //
                  // )


                ],),
                SizedBox(height: 17,) ,
                Row(children: [
                  Expanded(child: textFormField(hintText: "Language",
                      icon: Icons.voice_chat,
                      controller: bookController.language),

                  ),
                   SizedBox(width: 0,) ,
                  // Expanded(child: textFormField(hintText: "Audio lenght",
                  //     icon: Icons.audio_file,
                  //     controller: controller),
                  //
                  // )


                ],),
                SizedBox(height: 10,),
                textFormField(hintText: "About Author",
                    icon: Icons.book,
                    controller: bookController.aboutAuth),

              //
                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(
                                              width: 2,
                                              color: Colors.red,
                                            )),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.close,
                                              color: Colors.red,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              "CANCLE",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.copyWith(
                                                    color: Colors.red,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: Obx(
                                      () => Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.primary,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: bookController.isPdfUploading.value
                                            ? Center(
                                                child: CircularProgressIndicator(),
                                              )
                                            : InkWell(
                                                onTap: () {
                                                  bookController.createBook();
                                                },
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.upload_sharp,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .background,
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      "POST",
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
                                              ),
                                      ),
                                    )),

           ] ),
          ]),
    )],
      ),

    ),


    );
  }
}
