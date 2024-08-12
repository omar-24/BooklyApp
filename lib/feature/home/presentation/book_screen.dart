import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:booklyapp/feature/home/presentation/widget/BookHorizontal_scroll.dart';
import 'package:booklyapp/feature/home/presentation/widget/bookscreen_img.dart';
import 'package:flutter/material.dart';
import 'package:booklyapp/feature/home/presentation/widget/BookHorizontal_scroll.dart';
class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Books book = ModalRoute.of(context)!.settings.arguments as Books;

    return Scaffold(
      appBar:  AppBar(backgroundColor: Color(0xFF0f0c29),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.shopping_cart,color: Colors.white,size: 30,),
        )],

      ),

      body: Container(padding:EdgeInsets.only(top:20),color: Color(0xFF0f0c29),height: double.infinity,
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
              BookscreenImg(BOOK: book),
              SizedBox(height: 25,),
              Align(alignment:Alignment.center,child: Text("${book.volumeInfo!.title}",style: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.bold ),)),
              Text("${book.volumeInfo!.authors.first}",style: TextStyle(color: Colors.white,fontSize:20),),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                SizedBox(height: 10,),
                Icon(Icons.star,color: Colors.yellow,size: 18,),
                SizedBox(width: 5,),
                Text("4.5",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),),
                SizedBox(width: 7,),
                Text("(2324)",style: TextStyle(color: Colors.white,fontSize:12,),),
                Container(child: Row(children: [
                  Container(color: Colors.white,),
                  Container(color: Colors.cyan,),
                ],),)

              ],),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        ' 19.99\$ ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(width: 160,
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Free preview',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
              SizedBox(height: 50,),
              Padding(padding: const EdgeInsets.only(left: 20),
                child: Text("You can also like ",style: TextStyle(color: Colors.white,fontSize:19),),
              ),
              SizedBox(height: 15,),
              BookhorScroll(),
              ],),
            ],),
          ),
        ),
    );
  }
}
