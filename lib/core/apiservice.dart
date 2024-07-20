import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:dio/dio.dart';

// https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:
//https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest%20&q=computer%20science
class Apiservice{
  final Dio dio;
  var BaseURL="https://www.googleapis.com/books/v1/";
  Apiservice(this.dio);

  get({required String method})async{
    var response =await dio.get("$BaseURL$method");
    List<dynamic> Books = response.data;

   // List<Books> BOOKS=[];
    for(Map i in Books){

      //BOOKS.add(Books.fromjson(i));
    }
    //return BOOKS;
  }
}