import 'package:share_plus/share_plus.dart';

class ShareService {
  Future<void> shareFile(String path) async {
    await Share.shareXFiles([
      XFile(path),
    ]);
  }
}
