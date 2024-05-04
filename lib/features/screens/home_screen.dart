import 'package:cv_online/features/infrastructure/provider/theme_app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

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

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(children: [
      const DrawerHeader(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Informacion de contacto'),
            SizedBox(
              height: 20,
            ),
            Text('francogalbiati984@gmail.com'),
            SizedBox(
              height: 10,
            ),
            Text('+54 9 11 62271-014'),
          ],
        ),
      ),
      TextButton(
        onPressed: () =>
            _launchUrl('https://www.linkedin.com/in/franco-galbiati/'),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Ionicons.logo_linkedin),
            SizedBox(
              width: 10,
            ),
            Text('Linkedin'),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      TextButton(
        onPressed: () => _launchUrl('https://github.com/Galbfran'),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Ionicons.logo_github),
            SizedBox(
              width: 10,
            ),
            Text('Github'),
          ],
        ),
      )
    ]);
  }
}

Future<void> _launchUrl(String url) async {
  final Uri url0 = Uri.parse(url);
  if (await launchUrl(url0)) {
    throw Exception('Could not launch $url0');
  }
}
