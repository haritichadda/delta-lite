# AGENTS.md

## Project

Project Delta Lite is a Flutter Android app for offline-first protein tracking. The product goal is a tiny, fast, privacy-preserving utility for Indian foods: no accounts, no sync, no network permission, and no cloud AI dependency.

Source PRDs:

- `/Users/haritichadda/Desktop/App/Consumer PRD.rtf`
- `/Users/haritichadda/Desktop/App/Engineering PRD.rtf`

## Verified Local Tooling

Verified on 2026-07-19:

- Flutter: `3.44.6` stable at `/Users/haritichadda/develop/flutter`
- Dart: `3.12.2`
- Android SDK: `/Users/haritichadda/Library/Android/sdk`
- Android SDK platform/build tooling: `android-36`, Build Tools `36.0.0`, SDK `36.1.0`
- Java: Android Studio bundled JDK `21.0.10` at `/Applications/Android Studio.app/Contents/jbr/Contents/Home`
- ADB: `/Users/haritichadda/Library/Android/sdk/platform-tools/adb`
- Connected Android test device: Pixel 9, Android 14, API 34

`~/.zprofile` exports Flutter, Android SDK tools, `JAVA_HOME`, and Java on `PATH`.

Build smoke test completed successfully from a temporary Flutter Android app:

```sh
flutter create --platforms=android --project-name=delta_tooling_smoke /private/tmp/delta_tooling_smoke
cd /private/tmp/delta_tooling_smoke
flutter build apk --debug
```

Result:

```text
Built build/app/outputs/flutter-apk/app-debug.apk
```

## Current Tooling Caveats

- Android builds are ready.
- Full iOS/macOS Flutter development is not ready: full Xcode is not installed/configured, and CocoaPods is not installed.
- The engineering PRD targets Android, so iOS/macOS gaps are not blockers unless scope expands.

## Product Constraints

- Keep the app 100% client-side.
- Do not add login, accounts, OTP, analytics, sync, remote AI calls, or cloud database dependencies.
- Do not request Android internet permission. Ensure this remains absent from `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.INTERNET" />
```

- Prioritize cold start under 200ms, time-to-log under 5 seconds, and APK size under 25MB.
- Favor direct local state updates and reactive SQLite streams over loading spinners or network-style state machines.

## Planned Stack

- Flutter for app UI.
- Drift plus `sqlite3_flutter_libs` for type-safe local SQLite.
- `shared_preferences` for small local primitives such as protein target and launch counters.
- Pre-bundled SQLite asset at `assets/protein_matrix.db`.
- Local CSV export via Dart file APIs and Android storage-compatible paths.

## Data Model Direction

Core tables from the ePRD:

- `food_dictionary`: local and custom foods, serving unit, protein, calories, state context.
- `daily_logs`: date-indexed local food logs with calculated protein and calories.

Required indexes:

```sql
CREATE INDEX IF NOT EXISTS idx_food_name ON food_dictionary(name);
CREATE INDEX IF NOT EXISTS idx_logs_date ON daily_logs(log_date);
```

## Development Commands

Once the Flutter project is created in this repo, use:

```sh
flutter pub get
flutter analyze
flutter test
flutter build apk --debug
```

For generated Drift code:

```sh
dart run build_runner build --delete-conflicting-outputs
```

## Implementation Guidance

- Keep architecture simple and local: repository/DAO layers over Drift are enough unless the codebase grows.
- Prefer prefix search and indexed SQLite queries for type-ahead food search.
- Keep the home screen optimized for the 3-tap log flow: progress ring, frequent foods, search, portion bottom sheet.
- Treat household Indian measurements as first-class serving units, not just display labels.
- Separate raw and cooked food states as distinct food items where nutrition differs materially.
- Seed only curated local data needed for the offline product; avoid broad dependency-heavy nutrition datasets unless they are transformed into the bundled local matrix.

## Verification Expectations

Before handing off meaningful code changes:

```sh
flutter analyze
flutter test
flutter build apk --debug
```

Also inspect the Android manifest for accidental network permission additions.
