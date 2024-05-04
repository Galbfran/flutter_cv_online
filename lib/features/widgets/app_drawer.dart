import 'package:cv_online/features/helpers/lauch_url.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
            goLaunchUrl('https://www.linkedin.com/in/franco-galbiati/'),
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
        onPressed: () => goLaunchUrl('https://github.com/Galbfran'),
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
