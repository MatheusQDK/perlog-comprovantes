class ReceiptBatchController {
  final List<String> _images = [];

  List<String> get images => List.unmodifiable(_images);

  void addImages(List<String> files) {
    _images.addAll(files);
  }

  int get total => _images.length;

  int get pagesA4 {
    if (_images.isEmpty) return 0;
    return (_images.length / 12).ceil();
  }

  void clear() {
    _images.clear();
  }
}
