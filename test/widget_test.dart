// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:faturas/main.dart';

void main() {
  testWidgets('Last payment smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    await tester.tap(find.text('Enviar boleto por e-mail'));
    await tester.pumpAndSettle();
    expect(find.text('Não implementado'), findsOneWidget);
  });

  testWidgets('Last payment smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    await tester.tap(find.text('Copiar código de barras do boleto'));
    await tester.pumpAndSettle();
    expect(find.text('Não implementado'), findsOneWidget);
  });

  testWidgets('Last payment smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    await tester.tap(find.text('Pagar com cartão de crédito'));
    await tester.pumpAndSettle();
    expect(find.text('Não implementado'), findsNothing);
  });
}
