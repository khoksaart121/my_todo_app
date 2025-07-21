// test/widget_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mytodoapp/main.dart';

void main() {
  testWidgets('Todo app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyTodoApp());

    // Verify that our todo app shows initial state
    expect(find.text('My Todo App'), findsOneWidget);
    expect(find.text('ยังไม่มีรายการ Todo'), findsOneWidget);

    // Test adding a todo
    await tester.enterText(find.byType(TextField), 'Test Todo');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that todo is added
    expect(find.text('Test Todo'), findsOneWidget);
  });
}