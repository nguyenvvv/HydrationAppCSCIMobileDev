// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/determine_hydration.dart';

void main() {
  test('Calculate Hydration should calculate goal', () {
    //Arrange
    final determineHydration = DetermineHydration("Suzy", 105);

    //Act
    determineHydration.calculateHydration();

    //Assert
    expect(determineHydration.getHydration(), 70);

//Verify that our counter starts at 0.
//    expect(find.text('0'), findsOneWidget);
//    expect(find.text('1'), findsNothing);

//Insert Name in the text field icon and trigger a frame.
//    await tester.tap(find.byIcon(Icons.add));
//    await tester.pump();

//Verify that our counter has incremented.
//    expect(find.text('0'), findsNothing);
//   expect(find.text('1'), findsOneWidget);
  });
}
