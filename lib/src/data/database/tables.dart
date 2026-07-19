import 'package:drift/drift.dart';

@DataClassName('FoodItem')
class FoodDictionary extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  RealColumn get proteinPerUnit => real()();
  RealColumn get caloriesPerUnit => real()();
  TextColumn get servingUnitName => text()();
  BoolColumn get isCustom => boolean().withDefault(const Constant(false))();
  TextColumn get stateContext => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('DailyLog')
class DailyLogs extends Table {
  TextColumn get id => text()();
  TextColumn get foodId => text().references(FoodDictionary, #id)();
  TextColumn get logDate => text()();
  IntColumn get timestamp => integer()();
  RealColumn get quantity => real()();
  RealColumn get calculatedProtein => real()();
  RealColumn get calculatedCalories => real()();

  @override
  Set<Column> get primaryKey => {id};
}
