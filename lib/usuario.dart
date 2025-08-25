class Usuario{
  int? codigo ;
  String? nome ;
  String? login ;
  String? senha ;

  Usuario({int? codigo, String? senha, String? login, String? nome}){
    _codigo = codigo;
    _login = login;
    _nome = nome;
    _senha = senha;
  }
  int? get codigo => _codigo;
  String? get nome => _nome;
  String? get senha => _senha;

  String? get login{
    return _login;
  }

  set nome(String? nome) => _nome = nome;
  set senha(String? senha) => _senha = senha;
  set codigo(int? codigo) => _codigo = codigo;
  set login(String? login){
    _login = login;
  }

}