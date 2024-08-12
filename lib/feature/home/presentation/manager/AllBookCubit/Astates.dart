import 'package:booklyapp/feature/home/data/models/books.dart';

abstract class AllState{}

class AllInitial extends AllState{}
class AllLoeding extends AllState{}
class AllSuccess extends AllState{
  final List<Books> books;

  AllSuccess(this.books);
}
class AllFailed extends AllState{
  final String error;

  AllFailed(this.error);
}
