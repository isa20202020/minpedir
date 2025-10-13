class Tipo_Dao{
  static Future<Tipo>> listarTipos() async {
    final db = await databaseHelper.getDataBase();
    final resultado = await db query('tb_tipo');

    return resultado.map((mapa){
      return Tipo(
          codigo: mapa['cad_Tipo'] as int,
          descricao: mapa['nm_tipo'] as String
      );
    }).toList();

  }
}