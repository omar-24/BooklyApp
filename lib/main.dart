
import 'package:booklyapp/core/service_locator.dart';
import 'package:booklyapp/feature/home/data/repo/home_repo_impl.dart';
import 'package:booklyapp/feature/home/presentation/book_screen.dart';
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Acubit.dart';
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Astates.dart';
import 'package:booklyapp/feature/home/presentation/manager/NewestBookCubit/NCubit.dart';
import 'package:booklyapp/feature/home/presentation/manager/NewestBookCubit/Nstates.dart';
import 'package:booklyapp/feature/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>Ncubit(getIt.get<HomeRepoImpl>(),NewestInitial())..FetchNBooks()),
        BlocProvider(create: (context)=>Acubit(getIt.get<HomeRepoImpl>(),AllInitial())..FetchABooks()),
      ],
      child: MaterialApp(
        routes: {"bookScreen":(context)=>BookScreen()},
        home:splashscreen(),
      ),
    );
  }
}

