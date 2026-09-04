import 'dart:io';

class ComprovanteBatchService {
  final List<File> comprovantesDoDia = [];

  void adicionar(File comprovante) {
    comprovantesDoDia.add(comprovante);
  }

  int get quantidade => comprovantesDoDia.length;

  List<List<File>> separarEmPaginas({int limite = 12}) {
    final paginas = <List<File>>[];
    for (var i = 0; i < comprovantesDoDia.length; i += limite) {
      final fim = (i + limite < comprovantesDoDia.length)
          ? i + limite
          : comprovantesDoDia.length;
      paginas.add(comprovantesDoDia.sublist(i, fim));
    }
    return paginas;
  }
}
