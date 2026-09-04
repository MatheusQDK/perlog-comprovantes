import 'package:flutter_test/flutter_test.dart';
import 'package:perlog_comprovantes/main.dart';

void main() {
  testWidgets('exibe ação para abrir o scanner', (tester) async {
    await tester.pumpWidget(const PerlogScannerApp());
    expect(find.text('Digitalizar documento'), findsOneWidget);
    expect(find.text('Abrir scanner'), findsOneWidget);
    expect(find.text('Digitalize seu documento'), findsOneWidget);
  });
}
