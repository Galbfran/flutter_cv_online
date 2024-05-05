import 'package:flutter/material.dart';

class TechCard extends StatelessWidget {
  final String url;
  final String title;

  const TechCard({
    super.key,
    required this.url,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double textSize() {
      if (width < 500) return 13;
      if (width < 700) return 18;
      if (width < 1100) return 25;
      return 25;
    }

    double cardSize() {
      if (width < 500) return 100;
      if (width < 700) return 150;
      if (width < 1100) return 200;
      return 250;
    }

    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      color: const Color(0xff164772),
      elevation: 5,
      shadowColor: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.network(
          url,
          width: cardSize(),
          height: cardSize(),
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const CircularProgressIndicator(
              strokeWidth: 2,
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return const Text('Error cargando la imagen');
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: textSize(),
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}
