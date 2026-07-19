import 'package:delta_lite/main.dart';
import 'package:delta_lite/src/data/database/app_database.dart';
import 'package:delta_lite/src/data/repositories/settings_repository.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('shows Phase 1 database status', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final database = AppDatabase.forTesting(NativeDatabase.memory());
    final settings = SettingsRepository(preferences);

    addTearDown(database.close);

    await tester.pumpWidget(
      DeltaLiteApp(database: database, settings: settings),
    );
    await tester.pump();

    expect(find.text('Delta Lite'), findsOneWidget);
    expect(find.text('Offline protein matrix'), findsOneWidget);
    expect(find.text('Daily target: 120g'), findsOneWidget);
  });
}
