import 'package:cv_online/features/infrastructure/provider/theme_app_provider.dart';
import 'package:cv_online/features/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: isDarkMode == false
            ? const Color.fromARGB(255, 79, 164, 238)
            : const Color(0xff164772),
        title: const Text('Franco Galbiati'),
        elevation: 3,
        actions: [
          IconButton(
              onPressed: () {
                ref.read(darkModeProvider.notifier).toggleDarkMode();
              },
              icon: isDarkMode == false
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined))
        ],
      ),
    );
  }
}
