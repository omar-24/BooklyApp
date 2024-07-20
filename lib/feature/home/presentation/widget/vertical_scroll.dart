import 'package:booklyapp/feature/home/presentation/widget/book_card.dart';
import 'package:flutter/material.dart';

class verScroll extends StatelessWidget {
  const verScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate:SliverChildBuilderDelegate((BuildContext context,i){
      return bookCard();
    },childCount: 6)) ;
  }
}
