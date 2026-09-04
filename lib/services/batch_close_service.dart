class BatchCloseService {
  int calcularPaginasA4(int quantidade) {
    if (quantidade <= 0) return 0;
    return (quantidade / 12).ceil();
  }

  Map<String, dynamic> fecharLote(int quantidade) {
    return {
      'quantidade': quantidade,
      'paginasA4': calcularPaginasA4(quantidade),
      'status': 'FECHADO',
    };
  }
}
