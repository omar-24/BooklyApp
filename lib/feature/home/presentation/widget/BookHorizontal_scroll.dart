import 'package:booklyapp/core/apiservice.dart';
import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:booklyapp/feature/home/data/repo/home_repo_impl.dart';
import 'package:booklyapp/feature/home/presentation/book_screen.dart';
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Acubit.dart';
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Astates.dart';
import 'package:booklyapp/feature/home/presentation/widget/Book_img.dart';
import 'package:booklyapp/feature/home/presentation/widget/book_card.dart';
import 'package:booklyapp/feature/home/presentation/widget/bookscreen_img.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BookhorScroll extends StatelessWidget {
  const BookhorScroll({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return BlocBuilder<Acubit,AllState>(builder:(context,state){
      if(state is AllSuccess){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: SizedBox(height: 220,
            child: ListView.builder(itemBuilder: (context,i){
              return BookscreenImg(BOOK: state.books[i],);
            },itemCount:state.books.length,scrollDirection: Axis.horizontal),
          ),
        );
      }
      else if(state is AllFailed){
        return Text("${state.error}",style: TextStyle(color: Colors.white),);
      }
      else{
        return Center(child:CircularProgressIndicator(color: Colors.white,),);
      }
    } );
  }
}
