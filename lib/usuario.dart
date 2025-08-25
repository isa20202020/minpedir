class Usuario{
  int? codigo ;
  String? nome ;
  String? login ;
  String? senha ;

  Usuario({this.codigo, this.senha, this.login, this.nome});

  bool logar (String loginDigitado, String senhaDigitado) {
    if (login == this.login && senha == this.senha) {
      return true;
    } else {
      return false;
    }
  }
}