// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $FoodDictionaryTable extends FoodDictionary
    with TableInfo<$FoodDictionaryTable, FoodItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodDictionaryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _proteinPerUnitMeta = const VerificationMeta(
    'proteinPerUnit',
  );
  @override
  late final GeneratedColumn<double> proteinPerUnit = GeneratedColumn<double>(
    'protein_per_unit',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _caloriesPerUnitMeta = const VerificationMeta(
    'caloriesPerUnit',
  );
  @override
  late final GeneratedColumn<double> caloriesPerUnit = GeneratedColumn<double>(
    'calories_per_unit',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _servingUnitNameMeta = const VerificationMeta(
    'servingUnitName',
  );
  @override
  late final GeneratedColumn<String> servingUnitName = GeneratedColumn<String>(
    'serving_unit_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isCustomMeta = const VerificationMeta(
    'isCustom',
  );
  @override
  late final GeneratedColumn<bool> isCustom = GeneratedColumn<bool>(
    'is_custom',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_custom" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _stateContextMeta = const VerificationMeta(
    'stateContext',
  );
  @override
  late final GeneratedColumn<String> stateContext = GeneratedColumn<String>(
    'state_context',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    proteinPerUnit,
    caloriesPerUnit,
    servingUnitName,
    isCustom,
    stateContext,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'food_dictionary';
  @override
  VerificationContext validateIntegrity(
    Insertable<FoodItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('protein_per_unit')) {
      context.handle(
        _proteinPerUnitMeta,
        proteinPerUnit.isAcceptableOrUnknown(
          data['protein_per_unit']!,
          _proteinPerUnitMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_proteinPerUnitMeta);
    }
    if (data.containsKey('calories_per_unit')) {
      context.handle(
        _caloriesPerUnitMeta,
        caloriesPerUnit.isAcceptableOrUnknown(
          data['calories_per_unit']!,
          _caloriesPerUnitMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_caloriesPerUnitMeta);
    }
    if (data.containsKey('serving_unit_name')) {
      context.handle(
        _servingUnitNameMeta,
        servingUnitName.isAcceptableOrUnknown(
          data['serving_unit_name']!,
          _servingUnitNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_servingUnitNameMeta);
    }
    if (data.containsKey('is_custom')) {
      context.handle(
        _isCustomMeta,
        isCustom.isAcceptableOrUnknown(data['is_custom']!, _isCustomMeta),
      );
    }
    if (data.containsKey('state_context')) {
      context.handle(
        _stateContextMeta,
        stateContext.isAcceptableOrUnknown(
          data['state_context']!,
          _stateContextMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      proteinPerUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}protein_per_unit'],
      )!,
      caloriesPerUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}calories_per_unit'],
      )!,
      servingUnitName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}serving_unit_name'],
      )!,
      isCustom: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_custom'],
      )!,
      stateContext: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}state_context'],
      ),
    );
  }

  @override
  $FoodDictionaryTable createAlias(String alias) {
    return $FoodDictionaryTable(attachedDatabase, alias);
  }
}

class FoodItem extends DataClass implements Insertable<FoodItem> {
  final String id;
  final String name;
  final double proteinPerUnit;
  final double caloriesPerUnit;
  final String servingUnitName;
  final bool isCustom;
  final String? stateContext;
  const FoodItem({
    required this.id,
    required this.name,
    required this.proteinPerUnit,
    required this.caloriesPerUnit,
    required this.servingUnitName,
    required this.isCustom,
    this.stateContext,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['protein_per_unit'] = Variable<double>(proteinPerUnit);
    map['calories_per_unit'] = Variable<double>(caloriesPerUnit);
    map['serving_unit_name'] = Variable<String>(servingUnitName);
    map['is_custom'] = Variable<bool>(isCustom);
    if (!nullToAbsent || stateContext != null) {
      map['state_context'] = Variable<String>(stateContext);
    }
    return map;
  }

  FoodDictionaryCompanion toCompanion(bool nullToAbsent) {
    return FoodDictionaryCompanion(
      id: Value(id),
      name: Value(name),
      proteinPerUnit: Value(proteinPerUnit),
      caloriesPerUnit: Value(caloriesPerUnit),
      servingUnitName: Value(servingUnitName),
      isCustom: Value(isCustom),
      stateContext: stateContext == null && nullToAbsent
          ? const Value.absent()
          : Value(stateContext),
    );
  }

  factory FoodItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodItem(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      proteinPerUnit: serializer.fromJson<double>(json['proteinPerUnit']),
      caloriesPerUnit: serializer.fromJson<double>(json['caloriesPerUnit']),
      servingUnitName: serializer.fromJson<String>(json['servingUnitName']),
      isCustom: serializer.fromJson<bool>(json['isCustom']),
      stateContext: serializer.fromJson<String?>(json['stateContext']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'proteinPerUnit': serializer.toJson<double>(proteinPerUnit),
      'caloriesPerUnit': serializer.toJson<double>(caloriesPerUnit),
      'servingUnitName': serializer.toJson<String>(servingUnitName),
      'isCustom': serializer.toJson<bool>(isCustom),
      'stateContext': serializer.toJson<String?>(stateContext),
    };
  }

  FoodItem copyWith({
    String? id,
    String? name,
    double? proteinPerUnit,
    double? caloriesPerUnit,
    String? servingUnitName,
    bool? isCustom,
    Value<String?> stateContext = const Value.absent(),
  }) => FoodItem(
    id: id ?? this.id,
    name: name ?? this.name,
    proteinPerUnit: proteinPerUnit ?? this.proteinPerUnit,
    caloriesPerUnit: caloriesPerUnit ?? this.caloriesPerUnit,
    servingUnitName: servingUnitName ?? this.servingUnitName,
    isCustom: isCustom ?? this.isCustom,
    stateContext: stateContext.present ? stateContext.value : this.stateContext,
  );
  FoodItem copyWithCompanion(FoodDictionaryCompanion data) {
    return FoodItem(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      proteinPerUnit: data.proteinPerUnit.present
          ? data.proteinPerUnit.value
          : this.proteinPerUnit,
      caloriesPerUnit: data.caloriesPerUnit.present
          ? data.caloriesPerUnit.value
          : this.caloriesPerUnit,
      servingUnitName: data.servingUnitName.present
          ? data.servingUnitName.value
          : this.servingUnitName,
      isCustom: data.isCustom.present ? data.isCustom.value : this.isCustom,
      stateContext: data.stateContext.present
          ? data.stateContext.value
          : this.stateContext,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FoodItem(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('proteinPerUnit: $proteinPerUnit, ')
          ..write('caloriesPerUnit: $caloriesPerUnit, ')
          ..write('servingUnitName: $servingUnitName, ')
          ..write('isCustom: $isCustom, ')
          ..write('stateContext: $stateContext')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    proteinPerUnit,
    caloriesPerUnit,
    servingUnitName,
    isCustom,
    stateContext,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodItem &&
          other.id == this.id &&
          other.name == this.name &&
          other.proteinPerUnit == this.proteinPerUnit &&
          other.caloriesPerUnit == this.caloriesPerUnit &&
          other.servingUnitName == this.servingUnitName &&
          other.isCustom == this.isCustom &&
          other.stateContext == this.stateContext);
}

class FoodDictionaryCompanion extends UpdateCompanion<FoodItem> {
  final Value<String> id;
  final Value<String> name;
  final Value<double> proteinPerUnit;
  final Value<double> caloriesPerUnit;
  final Value<String> servingUnitName;
  final Value<bool> isCustom;
  final Value<String?> stateContext;
  final Value<int> rowid;
  const FoodDictionaryCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.proteinPerUnit = const Value.absent(),
    this.caloriesPerUnit = const Value.absent(),
    this.servingUnitName = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.stateContext = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodDictionaryCompanion.insert({
    required String id,
    required String name,
    required double proteinPerUnit,
    required double caloriesPerUnit,
    required String servingUnitName,
    this.isCustom = const Value.absent(),
    this.stateContext = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       proteinPerUnit = Value(proteinPerUnit),
       caloriesPerUnit = Value(caloriesPerUnit),
       servingUnitName = Value(servingUnitName);
  static Insertable<FoodItem> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<double>? proteinPerUnit,
    Expression<double>? caloriesPerUnit,
    Expression<String>? servingUnitName,
    Expression<bool>? isCustom,
    Expression<String>? stateContext,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (proteinPerUnit != null) 'protein_per_unit': proteinPerUnit,
      if (caloriesPerUnit != null) 'calories_per_unit': caloriesPerUnit,
      if (servingUnitName != null) 'serving_unit_name': servingUnitName,
      if (isCustom != null) 'is_custom': isCustom,
      if (stateContext != null) 'state_context': stateContext,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodDictionaryCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<double>? proteinPerUnit,
    Value<double>? caloriesPerUnit,
    Value<String>? servingUnitName,
    Value<bool>? isCustom,
    Value<String?>? stateContext,
    Value<int>? rowid,
  }) {
    return FoodDictionaryCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      proteinPerUnit: proteinPerUnit ?? this.proteinPerUnit,
      caloriesPerUnit: caloriesPerUnit ?? this.caloriesPerUnit,
      servingUnitName: servingUnitName ?? this.servingUnitName,
      isCustom: isCustom ?? this.isCustom,
      stateContext: stateContext ?? this.stateContext,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (proteinPerUnit.present) {
      map['protein_per_unit'] = Variable<double>(proteinPerUnit.value);
    }
    if (caloriesPerUnit.present) {
      map['calories_per_unit'] = Variable<double>(caloriesPerUnit.value);
    }
    if (servingUnitName.present) {
      map['serving_unit_name'] = Variable<String>(servingUnitName.value);
    }
    if (isCustom.present) {
      map['is_custom'] = Variable<bool>(isCustom.value);
    }
    if (stateContext.present) {
      map['state_context'] = Variable<String>(stateContext.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodDictionaryCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('proteinPerUnit: $proteinPerUnit, ')
          ..write('caloriesPerUnit: $caloriesPerUnit, ')
          ..write('servingUnitName: $servingUnitName, ')
          ..write('isCustom: $isCustom, ')
          ..write('stateContext: $stateContext, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DailyLogsTable extends DailyLogs
    with TableInfo<$DailyLogsTable, DailyLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  @override
  late final GeneratedColumn<String> foodId = GeneratedColumn<String>(
    'food_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES food_dictionary (id)',
    ),
  );
  static const VerificationMeta _logDateMeta = const VerificationMeta(
    'logDate',
  );
  @override
  late final GeneratedColumn<String> logDate = GeneratedColumn<String>(
    'log_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<int> timestamp = GeneratedColumn<int>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _calculatedProteinMeta = const VerificationMeta(
    'calculatedProtein',
  );
  @override
  late final GeneratedColumn<double> calculatedProtein =
      GeneratedColumn<double>(
        'calculated_protein',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _calculatedCaloriesMeta =
      const VerificationMeta('calculatedCalories');
  @override
  late final GeneratedColumn<double> calculatedCalories =
      GeneratedColumn<double>(
        'calculated_calories',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    foodId,
    logDate,
    timestamp,
    quantity,
    calculatedProtein,
    calculatedCalories,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'daily_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<DailyLog> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('food_id')) {
      context.handle(
        _foodIdMeta,
        foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta),
      );
    } else if (isInserting) {
      context.missing(_foodIdMeta);
    }
    if (data.containsKey('log_date')) {
      context.handle(
        _logDateMeta,
        logDate.isAcceptableOrUnknown(data['log_date']!, _logDateMeta),
      );
    } else if (isInserting) {
      context.missing(_logDateMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('calculated_protein')) {
      context.handle(
        _calculatedProteinMeta,
        calculatedProtein.isAcceptableOrUnknown(
          data['calculated_protein']!,
          _calculatedProteinMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_calculatedProteinMeta);
    }
    if (data.containsKey('calculated_calories')) {
      context.handle(
        _calculatedCaloriesMeta,
        calculatedCalories.isAcceptableOrUnknown(
          data['calculated_calories']!,
          _calculatedCaloriesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_calculatedCaloriesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailyLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DailyLog(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      foodId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}food_id'],
      )!,
      logDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}log_date'],
      )!,
      timestamp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}timestamp'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}quantity'],
      )!,
      calculatedProtein: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}calculated_protein'],
      )!,
      calculatedCalories: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}calculated_calories'],
      )!,
    );
  }

  @override
  $DailyLogsTable createAlias(String alias) {
    return $DailyLogsTable(attachedDatabase, alias);
  }
}

class DailyLog extends DataClass implements Insertable<DailyLog> {
  final String id;
  final String foodId;
  final String logDate;
  final int timestamp;
  final double quantity;
  final double calculatedProtein;
  final double calculatedCalories;
  const DailyLog({
    required this.id,
    required this.foodId,
    required this.logDate,
    required this.timestamp,
    required this.quantity,
    required this.calculatedProtein,
    required this.calculatedCalories,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['food_id'] = Variable<String>(foodId);
    map['log_date'] = Variable<String>(logDate);
    map['timestamp'] = Variable<int>(timestamp);
    map['quantity'] = Variable<double>(quantity);
    map['calculated_protein'] = Variable<double>(calculatedProtein);
    map['calculated_calories'] = Variable<double>(calculatedCalories);
    return map;
  }

  DailyLogsCompanion toCompanion(bool nullToAbsent) {
    return DailyLogsCompanion(
      id: Value(id),
      foodId: Value(foodId),
      logDate: Value(logDate),
      timestamp: Value(timestamp),
      quantity: Value(quantity),
      calculatedProtein: Value(calculatedProtein),
      calculatedCalories: Value(calculatedCalories),
    );
  }

  factory DailyLog.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyLog(
      id: serializer.fromJson<String>(json['id']),
      foodId: serializer.fromJson<String>(json['foodId']),
      logDate: serializer.fromJson<String>(json['logDate']),
      timestamp: serializer.fromJson<int>(json['timestamp']),
      quantity: serializer.fromJson<double>(json['quantity']),
      calculatedProtein: serializer.fromJson<double>(json['calculatedProtein']),
      calculatedCalories: serializer.fromJson<double>(
        json['calculatedCalories'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'foodId': serializer.toJson<String>(foodId),
      'logDate': serializer.toJson<String>(logDate),
      'timestamp': serializer.toJson<int>(timestamp),
      'quantity': serializer.toJson<double>(quantity),
      'calculatedProtein': serializer.toJson<double>(calculatedProtein),
      'calculatedCalories': serializer.toJson<double>(calculatedCalories),
    };
  }

  DailyLog copyWith({
    String? id,
    String? foodId,
    String? logDate,
    int? timestamp,
    double? quantity,
    double? calculatedProtein,
    double? calculatedCalories,
  }) => DailyLog(
    id: id ?? this.id,
    foodId: foodId ?? this.foodId,
    logDate: logDate ?? this.logDate,
    timestamp: timestamp ?? this.timestamp,
    quantity: quantity ?? this.quantity,
    calculatedProtein: calculatedProtein ?? this.calculatedProtein,
    calculatedCalories: calculatedCalories ?? this.calculatedCalories,
  );
  DailyLog copyWithCompanion(DailyLogsCompanion data) {
    return DailyLog(
      id: data.id.present ? data.id.value : this.id,
      foodId: data.foodId.present ? data.foodId.value : this.foodId,
      logDate: data.logDate.present ? data.logDate.value : this.logDate,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      calculatedProtein: data.calculatedProtein.present
          ? data.calculatedProtein.value
          : this.calculatedProtein,
      calculatedCalories: data.calculatedCalories.present
          ? data.calculatedCalories.value
          : this.calculatedCalories,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DailyLog(')
          ..write('id: $id, ')
          ..write('foodId: $foodId, ')
          ..write('logDate: $logDate, ')
          ..write('timestamp: $timestamp, ')
          ..write('quantity: $quantity, ')
          ..write('calculatedProtein: $calculatedProtein, ')
          ..write('calculatedCalories: $calculatedCalories')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    foodId,
    logDate,
    timestamp,
    quantity,
    calculatedProtein,
    calculatedCalories,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyLog &&
          other.id == this.id &&
          other.foodId == this.foodId &&
          other.logDate == this.logDate &&
          other.timestamp == this.timestamp &&
          other.quantity == this.quantity &&
          other.calculatedProtein == this.calculatedProtein &&
          other.calculatedCalories == this.calculatedCalories);
}

class DailyLogsCompanion extends UpdateCompanion<DailyLog> {
  final Value<String> id;
  final Value<String> foodId;
  final Value<String> logDate;
  final Value<int> timestamp;
  final Value<double> quantity;
  final Value<double> calculatedProtein;
  final Value<double> calculatedCalories;
  final Value<int> rowid;
  const DailyLogsCompanion({
    this.id = const Value.absent(),
    this.foodId = const Value.absent(),
    this.logDate = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.quantity = const Value.absent(),
    this.calculatedProtein = const Value.absent(),
    this.calculatedCalories = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DailyLogsCompanion.insert({
    required String id,
    required String foodId,
    required String logDate,
    required int timestamp,
    required double quantity,
    required double calculatedProtein,
    required double calculatedCalories,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       foodId = Value(foodId),
       logDate = Value(logDate),
       timestamp = Value(timestamp),
       quantity = Value(quantity),
       calculatedProtein = Value(calculatedProtein),
       calculatedCalories = Value(calculatedCalories);
  static Insertable<DailyLog> custom({
    Expression<String>? id,
    Expression<String>? foodId,
    Expression<String>? logDate,
    Expression<int>? timestamp,
    Expression<double>? quantity,
    Expression<double>? calculatedProtein,
    Expression<double>? calculatedCalories,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (foodId != null) 'food_id': foodId,
      if (logDate != null) 'log_date': logDate,
      if (timestamp != null) 'timestamp': timestamp,
      if (quantity != null) 'quantity': quantity,
      if (calculatedProtein != null) 'calculated_protein': calculatedProtein,
      if (calculatedCalories != null) 'calculated_calories': calculatedCalories,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DailyLogsCompanion copyWith({
    Value<String>? id,
    Value<String>? foodId,
    Value<String>? logDate,
    Value<int>? timestamp,
    Value<double>? quantity,
    Value<double>? calculatedProtein,
    Value<double>? calculatedCalories,
    Value<int>? rowid,
  }) {
    return DailyLogsCompanion(
      id: id ?? this.id,
      foodId: foodId ?? this.foodId,
      logDate: logDate ?? this.logDate,
      timestamp: timestamp ?? this.timestamp,
      quantity: quantity ?? this.quantity,
      calculatedProtein: calculatedProtein ?? this.calculatedProtein,
      calculatedCalories: calculatedCalories ?? this.calculatedCalories,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (foodId.present) {
      map['food_id'] = Variable<String>(foodId.value);
    }
    if (logDate.present) {
      map['log_date'] = Variable<String>(logDate.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<int>(timestamp.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (calculatedProtein.present) {
      map['calculated_protein'] = Variable<double>(calculatedProtein.value);
    }
    if (calculatedCalories.present) {
      map['calculated_calories'] = Variable<double>(calculatedCalories.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyLogsCompanion(')
          ..write('id: $id, ')
          ..write('foodId: $foodId, ')
          ..write('logDate: $logDate, ')
          ..write('timestamp: $timestamp, ')
          ..write('quantity: $quantity, ')
          ..write('calculatedProtein: $calculatedProtein, ')
          ..write('calculatedCalories: $calculatedCalories, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FoodDictionaryTable foodDictionary = $FoodDictionaryTable(this);
  late final $DailyLogsTable dailyLogs = $DailyLogsTable(this);
  late final FoodDao foodDao = FoodDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    foodDictionary,
    dailyLogs,
  ];
}

typedef $$FoodDictionaryTableCreateCompanionBuilder =
    FoodDictionaryCompanion Function({
      required String id,
      required String name,
      required double proteinPerUnit,
      required double caloriesPerUnit,
      required String servingUnitName,
      Value<bool> isCustom,
      Value<String?> stateContext,
      Value<int> rowid,
    });
typedef $$FoodDictionaryTableUpdateCompanionBuilder =
    FoodDictionaryCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<double> proteinPerUnit,
      Value<double> caloriesPerUnit,
      Value<String> servingUnitName,
      Value<bool> isCustom,
      Value<String?> stateContext,
      Value<int> rowid,
    });

final class $$FoodDictionaryTableReferences
    extends BaseReferences<_$AppDatabase, $FoodDictionaryTable, FoodItem> {
  $$FoodDictionaryTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$DailyLogsTable, List<DailyLog>>
  _dailyLogsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.dailyLogs,
    aliasName: 'food_dictionary__id__daily_logs__food_id',
  );

  $$DailyLogsTableProcessedTableManager get dailyLogsRefs {
    final manager = $$DailyLogsTableTableManager(
      $_db,
      $_db.dailyLogs,
    ).filter((f) => f.foodId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dailyLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$FoodDictionaryTableFilterComposer
    extends Composer<_$AppDatabase, $FoodDictionaryTable> {
  $$FoodDictionaryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get proteinPerUnit => $composableBuilder(
    column: $table.proteinPerUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get caloriesPerUnit => $composableBuilder(
    column: $table.caloriesPerUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get servingUnitName => $composableBuilder(
    column: $table.servingUnitName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCustom => $composableBuilder(
    column: $table.isCustom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stateContext => $composableBuilder(
    column: $table.stateContext,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> dailyLogsRefs(
    Expression<bool> Function($$DailyLogsTableFilterComposer f) f,
  ) {
    final $$DailyLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dailyLogs,
      getReferencedColumn: (t) => t.foodId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DailyLogsTableFilterComposer(
            $db: $db,
            $table: $db.dailyLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FoodDictionaryTableOrderingComposer
    extends Composer<_$AppDatabase, $FoodDictionaryTable> {
  $$FoodDictionaryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get proteinPerUnit => $composableBuilder(
    column: $table.proteinPerUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get caloriesPerUnit => $composableBuilder(
    column: $table.caloriesPerUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get servingUnitName => $composableBuilder(
    column: $table.servingUnitName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCustom => $composableBuilder(
    column: $table.isCustom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stateContext => $composableBuilder(
    column: $table.stateContext,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FoodDictionaryTableAnnotationComposer
    extends Composer<_$AppDatabase, $FoodDictionaryTable> {
  $$FoodDictionaryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get proteinPerUnit => $composableBuilder(
    column: $table.proteinPerUnit,
    builder: (column) => column,
  );

  GeneratedColumn<double> get caloriesPerUnit => $composableBuilder(
    column: $table.caloriesPerUnit,
    builder: (column) => column,
  );

  GeneratedColumn<String> get servingUnitName => $composableBuilder(
    column: $table.servingUnitName,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isCustom =>
      $composableBuilder(column: $table.isCustom, builder: (column) => column);

  GeneratedColumn<String> get stateContext => $composableBuilder(
    column: $table.stateContext,
    builder: (column) => column,
  );

  Expression<T> dailyLogsRefs<T extends Object>(
    Expression<T> Function($$DailyLogsTableAnnotationComposer a) f,
  ) {
    final $$DailyLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dailyLogs,
      getReferencedColumn: (t) => t.foodId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DailyLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.dailyLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FoodDictionaryTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FoodDictionaryTable,
          FoodItem,
          $$FoodDictionaryTableFilterComposer,
          $$FoodDictionaryTableOrderingComposer,
          $$FoodDictionaryTableAnnotationComposer,
          $$FoodDictionaryTableCreateCompanionBuilder,
          $$FoodDictionaryTableUpdateCompanionBuilder,
          (FoodItem, $$FoodDictionaryTableReferences),
          FoodItem,
          PrefetchHooks Function({bool dailyLogsRefs})
        > {
  $$FoodDictionaryTableTableManager(
    _$AppDatabase db,
    $FoodDictionaryTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FoodDictionaryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FoodDictionaryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FoodDictionaryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> proteinPerUnit = const Value.absent(),
                Value<double> caloriesPerUnit = const Value.absent(),
                Value<String> servingUnitName = const Value.absent(),
                Value<bool> isCustom = const Value.absent(),
                Value<String?> stateContext = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodDictionaryCompanion(
                id: id,
                name: name,
                proteinPerUnit: proteinPerUnit,
                caloriesPerUnit: caloriesPerUnit,
                servingUnitName: servingUnitName,
                isCustom: isCustom,
                stateContext: stateContext,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required double proteinPerUnit,
                required double caloriesPerUnit,
                required String servingUnitName,
                Value<bool> isCustom = const Value.absent(),
                Value<String?> stateContext = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodDictionaryCompanion.insert(
                id: id,
                name: name,
                proteinPerUnit: proteinPerUnit,
                caloriesPerUnit: caloriesPerUnit,
                servingUnitName: servingUnitName,
                isCustom: isCustom,
                stateContext: stateContext,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FoodDictionaryTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({dailyLogsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dailyLogsRefs) db.dailyLogs],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dailyLogsRefs)
                    await $_getPrefetchedData<
                      FoodItem,
                      $FoodDictionaryTable,
                      DailyLog
                    >(
                      currentTable: table,
                      referencedTable: $$FoodDictionaryTableReferences
                          ._dailyLogsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$FoodDictionaryTableReferences(
                            db,
                            table,
                            p0,
                          ).dailyLogsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.foodId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$FoodDictionaryTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FoodDictionaryTable,
      FoodItem,
      $$FoodDictionaryTableFilterComposer,
      $$FoodDictionaryTableOrderingComposer,
      $$FoodDictionaryTableAnnotationComposer,
      $$FoodDictionaryTableCreateCompanionBuilder,
      $$FoodDictionaryTableUpdateCompanionBuilder,
      (FoodItem, $$FoodDictionaryTableReferences),
      FoodItem,
      PrefetchHooks Function({bool dailyLogsRefs})
    >;
typedef $$DailyLogsTableCreateCompanionBuilder =
    DailyLogsCompanion Function({
      required String id,
      required String foodId,
      required String logDate,
      required int timestamp,
      required double quantity,
      required double calculatedProtein,
      required double calculatedCalories,
      Value<int> rowid,
    });
typedef $$DailyLogsTableUpdateCompanionBuilder =
    DailyLogsCompanion Function({
      Value<String> id,
      Value<String> foodId,
      Value<String> logDate,
      Value<int> timestamp,
      Value<double> quantity,
      Value<double> calculatedProtein,
      Value<double> calculatedCalories,
      Value<int> rowid,
    });

final class $$DailyLogsTableReferences
    extends BaseReferences<_$AppDatabase, $DailyLogsTable, DailyLog> {
  $$DailyLogsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $FoodDictionaryTable _foodIdTable(_$AppDatabase db) =>
      db.foodDictionary.createAlias('daily_logs__food_id__food_dictionary__id');

  $$FoodDictionaryTableProcessedTableManager get foodId {
    final $_column = $_itemColumn<String>('food_id')!;

    final manager = $$FoodDictionaryTableTableManager(
      $_db,
      $_db.foodDictionary,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_foodIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DailyLogsTableFilterComposer
    extends Composer<_$AppDatabase, $DailyLogsTable> {
  $$DailyLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get logDate => $composableBuilder(
    column: $table.logDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get calculatedProtein => $composableBuilder(
    column: $table.calculatedProtein,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get calculatedCalories => $composableBuilder(
    column: $table.calculatedCalories,
    builder: (column) => ColumnFilters(column),
  );

  $$FoodDictionaryTableFilterComposer get foodId {
    final $$FoodDictionaryTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.foodId,
      referencedTable: $db.foodDictionary,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FoodDictionaryTableFilterComposer(
            $db: $db,
            $table: $db.foodDictionary,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DailyLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $DailyLogsTable> {
  $$DailyLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get logDate => $composableBuilder(
    column: $table.logDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get calculatedProtein => $composableBuilder(
    column: $table.calculatedProtein,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get calculatedCalories => $composableBuilder(
    column: $table.calculatedCalories,
    builder: (column) => ColumnOrderings(column),
  );

  $$FoodDictionaryTableOrderingComposer get foodId {
    final $$FoodDictionaryTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.foodId,
      referencedTable: $db.foodDictionary,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FoodDictionaryTableOrderingComposer(
            $db: $db,
            $table: $db.foodDictionary,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DailyLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DailyLogsTable> {
  $$DailyLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get logDate =>
      $composableBuilder(column: $table.logDate, builder: (column) => column);

  GeneratedColumn<int> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get calculatedProtein => $composableBuilder(
    column: $table.calculatedProtein,
    builder: (column) => column,
  );

  GeneratedColumn<double> get calculatedCalories => $composableBuilder(
    column: $table.calculatedCalories,
    builder: (column) => column,
  );

  $$FoodDictionaryTableAnnotationComposer get foodId {
    final $$FoodDictionaryTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.foodId,
      referencedTable: $db.foodDictionary,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FoodDictionaryTableAnnotationComposer(
            $db: $db,
            $table: $db.foodDictionary,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DailyLogsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DailyLogsTable,
          DailyLog,
          $$DailyLogsTableFilterComposer,
          $$DailyLogsTableOrderingComposer,
          $$DailyLogsTableAnnotationComposer,
          $$DailyLogsTableCreateCompanionBuilder,
          $$DailyLogsTableUpdateCompanionBuilder,
          (DailyLog, $$DailyLogsTableReferences),
          DailyLog,
          PrefetchHooks Function({bool foodId})
        > {
  $$DailyLogsTableTableManager(_$AppDatabase db, $DailyLogsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DailyLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DailyLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DailyLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> foodId = const Value.absent(),
                Value<String> logDate = const Value.absent(),
                Value<int> timestamp = const Value.absent(),
                Value<double> quantity = const Value.absent(),
                Value<double> calculatedProtein = const Value.absent(),
                Value<double> calculatedCalories = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DailyLogsCompanion(
                id: id,
                foodId: foodId,
                logDate: logDate,
                timestamp: timestamp,
                quantity: quantity,
                calculatedProtein: calculatedProtein,
                calculatedCalories: calculatedCalories,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String foodId,
                required String logDate,
                required int timestamp,
                required double quantity,
                required double calculatedProtein,
                required double calculatedCalories,
                Value<int> rowid = const Value.absent(),
              }) => DailyLogsCompanion.insert(
                id: id,
                foodId: foodId,
                logDate: logDate,
                timestamp: timestamp,
                quantity: quantity,
                calculatedProtein: calculatedProtein,
                calculatedCalories: calculatedCalories,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DailyLogsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({foodId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (foodId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.foodId,
                                referencedTable: $$DailyLogsTableReferences
                                    ._foodIdTable(db),
                                referencedColumn: $$DailyLogsTableReferences
                                    ._foodIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DailyLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DailyLogsTable,
      DailyLog,
      $$DailyLogsTableFilterComposer,
      $$DailyLogsTableOrderingComposer,
      $$DailyLogsTableAnnotationComposer,
      $$DailyLogsTableCreateCompanionBuilder,
      $$DailyLogsTableUpdateCompanionBuilder,
      (DailyLog, $$DailyLogsTableReferences),
      DailyLog,
      PrefetchHooks Function({bool foodId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FoodDictionaryTableTableManager get foodDictionary =>
      $$FoodDictionaryTableTableManager(_db, _db.foodDictionary);
  $$DailyLogsTableTableManager get dailyLogs =>
      $$DailyLogsTableTableManager(_db, _db.dailyLogs);
}
