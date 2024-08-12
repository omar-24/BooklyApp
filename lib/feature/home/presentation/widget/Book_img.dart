import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:flutter/material.dart';


class BookImg extends StatelessWidget {
  const BookImg({Key? key, required this.BOOk}) : super(key: key);
  final Books BOOk;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){Navigator.pushNamed(context, "bookScreen",arguments: BOOk); },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: NetworkImage('${BOOk.volumeInfo?.imageLinks?.thumbnail!=null?BOOk.volumeInfo?.imageLinks?.thumbnail:"https://cdn.shopify.com/s/files/1/2175/4361/products/loaded-bhangra-dancer-longboard-48.5-flex-2-orange-80-stim.jpg?v=1520019868"}',),fit: BoxFit.fill)
          ),
        )
      ),
    );
  }
}
