import 'package:booklyapp/feature/home/data/models/books.dart';
import 'package:booklyapp/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements Home_repo{
  @override
  Future<Either<String, List<Books>>> featchNewestBooks() {
    // TODO: implement featchNewestBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<String, List<Books>>> featchallBokks() {
    // TODO: implement featchallBokks
    throw UnimplementedError();
  }

}