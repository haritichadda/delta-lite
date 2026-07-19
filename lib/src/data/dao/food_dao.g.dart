// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_dao.dart';

// ignore_for_file: type=lint
mixin _$FoodDaoMixin on DatabaseAccessor<AppDatabase> {
  $FoodDictionaryTable get foodDictionary => attachedDatabase.foodDictionary;
  $DailyLogsTable get dailyLogs => attachedDatabase.dailyLogs;
  FoodDaoManager get managers => FoodDaoManager(this);
}

class FoodDaoManager {
  final _$FoodDaoMixin _db;
  FoodDaoManager(this._db);
  $$FoodDictionaryTableTableManager get foodDictionary =>
      $$FoodDictionaryTableTableManager(
        _db.attachedDatabase,
        _db.foodDictionary,
      );
  $$DailyLogsTableTableManager get dailyLogs =>
      $$DailyLogsTableTableManager(_db.attachedDatabase, _db.dailyLogs);
}
