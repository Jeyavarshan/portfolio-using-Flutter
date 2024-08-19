import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppThemeMode {
  light,
  dark,
}

class AppThemeModeNotifier extends Notifier<AppThemeMode> {
  @override
  AppThemeMode build() {
    final themeMode =
        ref.watch(sharedPreferencesProvider).getString("themeMode");
    return themeMode == AppThemeMode.dark.name
        ? AppThemeMode.dark
        : AppThemeMode.light;
  }

  void toggleTheme() {
    final newThemeMode =
        state == AppThemeMode.light ? AppThemeMode.dark : AppThemeMode.light;
    ref
        .read(sharedPreferencesProvider)
        .setString("themeMode", newThemeMode.name);
    state = newThemeMode;
  }
}

final appThemeModeProvider =
    NotifierProvider<AppThemeModeNotifier, AppThemeMode>(
        AppThemeModeNotifier.new);

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});
