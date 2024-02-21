import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rickandmortycubit/app_router.dart';

import 'package:rickandmortycubit/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( RickandMortyApp(appRouter: AppRouter()));

    // Verify that our counter starts at a default value.
    expect(find.text('Default Counter Value'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Default Counter Value'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
