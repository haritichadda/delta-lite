import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/data/database/app_database.dart';
import 'src/data/repositories/settings_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = AppDatabase();
  final settings = SettingsRepository(await SharedPreferences.getInstance());
  await settings.incrementLaunchCount();

  runApp(DeltaLiteApp(database: database, settings: settings));
}

class DeltaLiteApp extends StatelessWidget {
  const DeltaLiteApp({
    required this.database,
    required this.settings,
    super.key,
  });

  final AppDatabase database;
  final SettingsRepository settings;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delta Lite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F766E)),
        useMaterial3: true,
      ),
      home: PhaseOneStatusScreen(database: database, settings: settings),
    );
  }
}

class PhaseOneStatusScreen extends StatelessWidget {
  const PhaseOneStatusScreen({
    required this.database,
    required this.settings,
    super.key,
  });

  final AppDatabase database;
  final SettingsRepository settings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Delta Lite'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Offline protein matrix',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            const Text('Phase 1 local data engine is initialized.'),
            const SizedBox(height: 24),
            FutureBuilder<int>(
              future: database.countSeedFoods(),
              builder: (context, snapshot) {
                final countText = switch (snapshot.connectionState) {
                  ConnectionState.done when snapshot.hasData =>
                    '${snapshot.data} bundled foods ready',
                  ConnectionState.done => 'Database check failed',
                  _ => 'Opening local database',
                };

                return Text(countText);
              },
            ),
            const SizedBox(height: 8),
            Text(
              'Daily target: ${settings.dailyProteinTargetGrams.toStringAsFixed(0)}g',
            ),
          ],
        ),
      ),
    );
  }
}
