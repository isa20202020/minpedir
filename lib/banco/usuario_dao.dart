import 'database_helper.dart'
import'../usuario.dart';

class UsuarioDAO{

  static Usuario usuarioLogado = Usuario();

  static Future<bool> autenticar (String login, String senha) async{
    final db = await DatabaseHelper.getDataBase();

    final resultado = await db.query(
        'tb_usuario',
        where: 'nm_login = ? and ds_senha = ?',
        whereArgs:[login, senha]
    );

    usuarioLogado.codigo = resultado.first['cd_usuario'] as Int;
    usuarioLogado.codigo = resultado.first['nm_usuario'] as String;
    usuarioLogado.codigo = resultado.first['nm_login'] as String;
    usuarioLogado.codigo = resultado.first['ds_senha'] as String;

    return resultado.isNotEmpty;
  }
}