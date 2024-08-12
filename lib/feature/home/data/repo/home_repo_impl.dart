import 'package:booklyapp/core/apiservice.dart';
import 'package:booklyapp/core/errors/faliure.dart';
import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:booklyapp/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements Home_repo{
  final Apiservice apiservice;
  HomeRepoImpl(this.apiservice);

  @override
  Future<Either<faliure,List<Books>>> featchNewestBooks()async {
    try {
      var data =await apiservice.get(method: "v1/volumes?Filtering=free-ebooks&q=subject:&Sorting=newest");
      List<Books> BOOKS=[];
      for(var i in data["items"]){
        BOOKS.add(Books.fromJson(i));
      }
      return right(BOOKS);
    }  catch (e) {
      return left(server_error(e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<faliure, List<Books>>> featchallBooks()async {
    try {
      var data =await apiservice.get(method: "v1/volumes?Filtering=free-ebooks&q=subject:");
      List<Books> BOOKS=[];
      for(var i in data["items"]){
        BOOKS.add(Books.fromJson(i));
      }
      return right(BOOKS);
    }  catch (e) {
      return left(server_error(e.toString()));
      // TODO
    }
  }

}