import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:dio/dio.dart';

// https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:
//https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest%20&q=computer%20science
class Apiservice{
  final Dio dio;
  var BaseURL="https://www.googleapis.com/books/";
  Apiservice(this.dio);

  Future<Map<String,dynamic>>get({required String method})async{
    var response =await dio.get("$BaseURL$method");
    return response.data;

  }
}