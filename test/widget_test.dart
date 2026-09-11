import 'package:flutter_test/flutter_test.dart';

import 'package:ararathotel/main.dart';

void main() {
  testWidgets('Home page shows hotel name and nav to rooms', (WidgetTester tester) async {
    await tester.pumpWidget(const HotelApp());
    await tester.pumpAndSettle();

    expect(find.text('Suite Ararat Hotel'), findsWidgets);
    expect(find.text('Rooms & Prices'), findsWidgets);
  });
}
