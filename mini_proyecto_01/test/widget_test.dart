import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mini_proyecto_01/main.dart';

void main() {
  testWidgets('Muestra el splash de la aplicacion', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Calculadora de IMC'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pump(Duration(seconds: 3));
  });
}
