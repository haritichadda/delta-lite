import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository {
  SettingsRepository(this._preferences);

  static const _proteinTargetKey = 'daily_protein_target_grams';
  static const _launchCountKey = 'launch_count';

  final SharedPreferences _preferences;

  double get dailyProteinTargetGrams =>
      _preferences.getDouble(_proteinTargetKey) ?? 120;

  Future<void> setDailyProteinTargetGrams(double value) {
    return _preferences.setDouble(_proteinTargetKey, value);
  }

  int get launchCount => _preferences.getInt(_launchCountKey) ?? 0;

  Future<int> incrementLaunchCount() async {
    final nextValue = launchCount + 1;
    await _preferences.setInt(_launchCountKey, nextValue);
    return nextValue;
  }
}
