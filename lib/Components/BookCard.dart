import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String coverUrl;
  final String title;
  final VoidCallback ontap;
  const BookCard({super.key,required this.coverUrl,required this.ontap,required this.title});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(right:20),
    child:  InkWell(
      onTap: ontap,
      child: SizedBox(
        width: 100,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                    coverUrl,
                    width:100),

              ),


            ),
            SizedBox(height: 10),
            Text(title,textAlign: TextAlign.center,maxLines: 1,
                style: Theme.of(context).textTheme
                    .labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                )
            ),
          ],
        ),
      ),
    )
        );
  }
}
