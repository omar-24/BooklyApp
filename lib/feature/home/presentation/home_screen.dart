
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Acubit.dart';
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Astates.dart';
import 'package:booklyapp/feature/home/presentation/widget/Horizontal_scroll.dart';
import 'package:booklyapp/feature/home/presentation/widget/vertical_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF0f0c29),
        leadingWidth: 150,
        leading:
        Padding(padding: const EdgeInsets.only(left: 20),
          child: Image.asset("images/Logo.png"),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.search,color: Colors.white,size: 45,),
        )],

      ),


      body:Container(color: Color(0xFF0f0c29),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(child:SizedBox(height: 10,),),
          SliverToBoxAdapter(child:horScroll()),
          SliverToBoxAdapter(child:SizedBox(height: 10,),),
          SliverToBoxAdapter(child:Padding(padding: const EdgeInsets.only(left:20),
            child: Text("Newest Book",style: TextStyle(color: Colors.white,fontSize:17),),
          )),
          SliverToBoxAdapter(child:SizedBox(height: 10,),),
          verScroll()
        ],),
      ),
    );
  }
}
