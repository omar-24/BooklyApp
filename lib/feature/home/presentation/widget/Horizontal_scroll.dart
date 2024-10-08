
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Acubit.dart';
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Astates.dart';
import 'package:booklyapp/feature/home/presentation/widget/Book_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class horScroll extends StatelessWidget {
  const horScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Acubit,AllState>(builder:(context,state){
      if(state is AllSuccess){
        return Padding(
          padding: const EdgeInsets.only(left: 25,top: 20,bottom: 15),
          child: SizedBox(height: 230,
            child: ListView.builder(itemBuilder: (context,i){
              return BookImg(BOOk:state.books[i]);
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
