import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_app_provider.g.dart';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => true;

  void toggleDarkMode() {
    state = !state;
  }
}
