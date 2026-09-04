import 'dart:io';

class RealScannerController {
  final List<File> pages = [];

  void addPage(File image) {
    pages.add(image);
  }

  void removePage(int index) {
    if (index >= 0 && index < pages.length) {
      pages.removeAt(index);
    }
  }

  int get totalPages => pages.length;

  void clear() {
    pages.clear();
  }
}
