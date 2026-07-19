import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../dao/food_dao.dart';
import 'tables.dart';

part 'app_database.g.dart';

const String proteinMatrixAssetPath = 'assets/protein_matrix.db';
const String proteinMatrixFileName = 'protein_matrix.db';

@DriftDatabase(tables: [FoodDictionary, DailyLogs], daos: [FoodDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openBundledDatabase());

  AppDatabase.forTesting(super.executor);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await _createIndexes();
    },
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON');
      await _createIndexes();
    },
  );

  Future<int> countSeedFoods() {
    final countExpression = foodDictionary.id.count();
    return (selectOnly(foodDictionary)..addColumns([countExpression]))
        .map((row) => row.read(countExpression) ?? 0)
        .getSingle();
  }

  Future<void> _createIndexes() async {
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_food_name ON food_dictionary(name)',
    );
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_logs_date ON daily_logs(log_date)',
    );
  }
}

LazyDatabase _openBundledDatabase() {
  return LazyDatabase(() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final dbFile = File(p.join(documentsDirectory.path, proteinMatrixFileName));

    if (!await dbFile.exists()) {
      final seedData = await rootBundle.load(proteinMatrixAssetPath);
      await dbFile.writeAsBytes(
        seedData.buffer.asUint8List(
          seedData.offsetInBytes,
          seedData.lengthInBytes,
        ),
        flush: true,
      );
    }

    return NativeDatabase.createInBackground(dbFile);
  });
}
