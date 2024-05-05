import 'package:flutter/material.dart';

class StackTech extends StatelessWidget {
  const StackTech({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      widthFactor: 0.9,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Stack de tecnologias',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Wrap(children: [
                TechCard(
                  url: 'https://img.icons8.com/color/344/python.png',
                  title: 'Python',
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}

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
      return 30;
    }

    return Card(
      color: const Color(0xff164772),
      elevation: 5,
      shadowColor: Colors.white,
      child: Column(children: [
        Image.network(
          url,
          width: 300,
          height: 200,
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
