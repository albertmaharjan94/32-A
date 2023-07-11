import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/InputWidget.dart';
import 'package:flutter_project/widgets/MakeTextWidget.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  testWidgets("Test text widget", (widgetTester) async {
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MakeTextWidget(text: "100",),
        ),
      )
    );

    final textFinder = find.text("Rs. 200");

    expect(textFinder, findsOneWidget);
  });

  testWidgets("Input form test", (widgetTester) async {

    await widgetTester.pumpWidget(
        MaterialApp(
          home: Material(
            child: InputWidget(),
          ),
        )
    );

    // event 1
    // await widgetTester.enterText(find.byType(TextFormField), "Hi");
     await widgetTester.enterText(find.byKey(Key("input-field")), "Hi");

    // event 2
    // await widgetTester.tap(find.byType(ElevatedButton));
    await widgetTester.tap(find.byKey(Key("button")));

    // rebuild
    await widgetTester.pump();

    final finder = find.text("Output: Hi");

    expect(finder, findsOneWidget);

  });

}