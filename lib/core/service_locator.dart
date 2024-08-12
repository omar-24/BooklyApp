import 'package:booklyapp/core/apiservice.dart';
import 'package:booklyapp/feature/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;


void setup(){
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(Apiservice(Dio())));
}