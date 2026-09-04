class PrintConfiguration {
  final int porPagina;
  final double larguraComprovanteCm;
  final double alturaComprovanteCm;
  final bool linhasCorte;

  const PrintConfiguration({
    this.porPagina = 12,
    this.larguraComprovanteCm = 6,
    this.alturaComprovanteCm = 6,
    this.linhasCorte = true,
  });
}
