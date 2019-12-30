import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:seven_fit/app/modules/signUp/signUp/signUp_page.dart';

main() {
  testWidgets('SignUpPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SignUpPage(title: 'SignUp')));
    final titleFinder = find.text('SignUp');
    expect(titleFinder, findsOneWidget);
  });
}
