abstract class faliure{
  final String error;

  faliure(this.error);

}

class server_error extends faliure{
  server_error(super.error);
}