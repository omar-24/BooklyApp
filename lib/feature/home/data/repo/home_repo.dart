import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:dartz/dartz.dart';

abstract class Home_repo{
 Future<Either<String,List<Books>>> featchallBokks();
 Future<Either<String,List<Books>>> featchNewestBooks();
}