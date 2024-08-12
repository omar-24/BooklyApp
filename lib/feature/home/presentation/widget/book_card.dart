import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:booklyapp/feature/home/presentation/book_screen.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({Key? key, required this.BOOK}) : super(key: key);
  final Books BOOK;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "bookScreen", arguments: BOOK);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 15, left: 20),
        child: Row(
          children: [
            Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    image: DecorationImage(image: NetworkImage('${BOOK.volumeInfo?.imageLinks?.thumbnail!=null?BOOK.volumeInfo?.imageLinks?.thumbnail:"https://cdn.shopify.com/s/files/1/2175/4361/products/loaded-bhangra-dancer-longboard-48.5-flex-2-orange-80-stim.jpg?v=1520019868"}',),fit: BoxFit.fill)
                ),
                ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 200,
                    child: Text(
                      "${BOOK.volumeInfo?.title != null ? BOOK.volumeInfo?.title : "No Title yet"}",
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    width: 200,
                    child: Text(
                      "${BOOK.volumeInfo?.authors != null ? BOOK.volumeInfo?.authors : "No authors yet"}",
                      maxLines: 1,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                Row(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Free",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(2324)",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
