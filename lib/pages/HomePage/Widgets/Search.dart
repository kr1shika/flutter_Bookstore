// import 'package:e_book/Controller/BookController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_parmesan/config/Colors.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    // BookController bookController = Get.put(BookController());
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: white,
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          InkWell(
              onTap: () {
                // bookController.getAllBooks();
              },
              child: SvgPicture.asset("Assets/Icons/search.svg")),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Search here . .",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
