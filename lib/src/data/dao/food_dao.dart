import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import '../database/app_database.dart';
import '../database/tables.dart';

part 'food_dao.g.dart';

@DriftAccessor(tables: [FoodDictionary, DailyLogs])
class FoodDao extends DatabaseAccessor<AppDatabase> with _$FoodDaoMixin {
  FoodDao(super.db);

  Stream<List<FoodItem>> watchFoodDictionary({int limit = 300}) {
    final query = select(foodDictionary)
      ..orderBy([
        (t) => OrderingTerm(expression: t.isCustom, mode: OrderingMode.desc),
        (t) => OrderingTerm(expression: t.name),
      ])
      ..limit(limit);

    return query.watch();
  }

  Future<List<FoodItem>> getSeedFoods() {
    final query = select(foodDictionary)
      ..where((t) => t.isCustom.equals(false))
      ..orderBy([(t) => OrderingTerm(expression: t.name)]);

    return query.get();
  }

  Future<FoodItem> createCustomFood({
    required String name,
    required double proteinPerUnit,
    required double caloriesPerUnit,
    required String servingUnitName,
    String? stateContext,
  }) async {
    final companion = FoodDictionaryCompanion.insert(
      id: const Uuid().v4(),
      name: name.trim(),
      proteinPerUnit: proteinPerUnit,
      caloriesPerUnit: caloriesPerUnit,
      servingUnitName: servingUnitName.trim(),
      isCustom: const Value(true),
      stateContext: Value(stateContext?.trim()),
    );

    await into(foodDictionary).insert(companion);
    return (select(
      foodDictionary,
    )..where((table) => table.id.equals(companion.id.value))).getSingle();
  }

  Future<DailyLog> logFood({
    required FoodItem food,
    required DateTime loggedAt,
    required double quantity,
  }) async {
    final companion = DailyLogsCompanion.insert(
      id: const Uuid().v4(),
      foodId: food.id,
      logDate: _dateKey(loggedAt),
      timestamp: loggedAt.millisecondsSinceEpoch,
      quantity: quantity,
      calculatedProtein: food.proteinPerUnit * quantity,
      calculatedCalories: food.caloriesPerUnit * quantity,
    );

    await into(dailyLogs).insert(companion);
    return (select(
      dailyLogs,
    )..where((table) => table.id.equals(companion.id.value))).getSingle();
  }
}

String _dateKey(DateTime date) {
  final local = date.toLocal();
  final month = local.month.toString().padLeft(2, '0');
  final day = local.day.toString().padLeft(2, '0');
  return '${local.year}-$month-$day';
}
