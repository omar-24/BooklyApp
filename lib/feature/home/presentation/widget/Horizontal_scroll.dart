import 'package:booklyapp/feature/home/presentation/widget/Book_img.dart';
import 'package:flutter/material.dart';

class horScroll extends StatelessWidget {
  const horScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,top: 20,bottom: 15),
      child: SizedBox(height: 230,
        child: ListView.builder(itemBuilder: (context,i){
          return bookImg();
        },itemCount:4,scrollDirection: Axis.horizontal,),
      ),
    );;
  }
}
