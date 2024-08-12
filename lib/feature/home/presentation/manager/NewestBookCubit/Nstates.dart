
import '../../../data/models/books.dart';

abstract class NewestState{}

class NewestInitial extends NewestState{}
class NewestLoeding extends NewestState{}
class NewestSuccess extends NewestState{
  final List<Books> books;

  NewestSuccess(this.books);
}
class NewestFailed extends NewestState{
  final String error;

  NewestFailed(this.error);
}
