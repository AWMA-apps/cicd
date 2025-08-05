import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';
import 'package:cicd_tutorial/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("App launches and shows main screen", (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    //expect(find.text("Hello"), findsOneWidget); // عدل حسب واجهتك
    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    //expect(find.text('1'), findsNothing);

  });
}
