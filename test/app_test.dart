import 'package:flutter_test/flutter_test.dart';
import 'package:github_issues/app/app.dart';
import 'package:github_issues/config/config.dart';
import 'package:github_issues/github/github.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('App', () {
    testWidgets('renders IssuesPage', (tester) async {
      await Initialization.init();
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle(const Duration(seconds: 5));
      expect(find.byType(IssuesPage), findsOneWidget);
    });
  });
}
