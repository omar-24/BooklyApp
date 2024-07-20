import 'package:booklyapp/core/errors/faliure.dart';
import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:dartz/dartz.dart';

abstract class Home_repo{
 Future<Either<faliure,List<Books>>> featchallBokks();
 Future<Either<faliure,List<Books>>> featchNewestBooks();
}