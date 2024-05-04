import 'package:cv_online/config/router/app_router.dart';
import 'package:cv_online/config/theme/app_theme.dart';
import 'package:cv_online/features/infrastructure/provider/theme_app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final isDarkMode = ref.watch(darkModeProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme(isDarkmode: isDarkMode).getTheme(),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
