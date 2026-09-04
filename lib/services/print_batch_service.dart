class PrintBatchService {
  static const int itemsPerPage = 12;

  int pagesFor(int quantity) {
    if (quantity <= 0) return 0;
    return (quantity / itemsPerPage).ceil();
  }

  List<List<T>> paginate<T>(List<T> items) {
    final pages = <List<T>>[];
    for (var i = 0; i < items.length; i += itemsPerPage) {
      final end = (i + itemsPerPage > items.length)
          ? items.length
          : i + itemsPerPage;
      pages.add(items.sublist(i, end));
    }
    return pages;
  }
}
