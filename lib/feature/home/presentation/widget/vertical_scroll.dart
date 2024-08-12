import 'package:booklyapp/core/apiservice.dart';
import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:booklyapp/feature/home/data/repo/home_repo_impl.dart';
import 'package:booklyapp/feature/home/presentation/manager/NewestBookCubit/NCubit.dart';
import 'package:booklyapp/feature/home/presentation/manager/NewestBookCubit/Nstates.dart';
import 'package:booklyapp/feature/home/presentation/widget/book_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class verScroll extends StatelessWidget {
  const verScroll({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return BlocBuilder<Ncubit,NewestState>(builder: (context,state){
      if(state is NewestSuccess){
        return SliverList(delegate:SliverChildBuilderDelegate((BuildContext context,i){
          return BookCard(BOOK: state.books[i]);
        },childCount: state.books.length));
      }
      else if(state is NewestFailed){
        return SliverToBoxAdapter(child: Text("${state.error}"));
      }
      else{
        return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(color: Colors.white,)));
      }
    }) ;
  }
}
