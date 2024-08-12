import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:flutter/material.dart';

class BookscreenImg extends StatelessWidget {
  const BookscreenImg({Key? key, required this.BOOK}) : super(key: key);
  final Books BOOK;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){Navigator.pushNamed(context, "bookScreen"); },
      child: Padding(
        padding: const EdgeInsets.only(left:10),
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: NetworkImage('${BOOK.volumeInfo?.imageLinks?.thumbnail!=null?BOOK.volumeInfo?.imageLinks?.thumbnail:"https://cdn.shopify.com/s/files/1/2175/4361/products/loaded-bhangra-dancer-longboard-48.5-flex-2-orange-80-stim.jpg?v=1520019868"}',),fit: BoxFit.fill)
          ),
        )
      ),
    );
  }
}
