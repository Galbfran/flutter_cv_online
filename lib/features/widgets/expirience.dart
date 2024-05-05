import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({
    super.key,
  });

  final String stack =
      'Full Stack Developer || Dart || Flutter || React-js || Redux || Next.js || Node.js || Express.js || PostgreSQL || Sequelize';
  final String presentation =
      'Apasionado desarrollador con experiencia en la creación de aplicaciones móviles y web utilizando tecnologías modernas como Flutter, Node.js, Express, Sequelize y PostgreSQL. Con un enfoque en la entrega de soluciones de alta calidad y rendimiento, participando en proyectos desde la concepción hasta la implementación, colaborando estrechamente con equipos multidisciplinarios para alcanzar los objetivos del negocio.';
  final String experience =
      'Mi experiencia como desarrollador en Deep Skill Academy amplió mi conjunto de habilidades, enseñándome a trabajar en equipo de manera efectiva y a aprender constantemente nuevas herramientas. Destaco mi capacidad para utilizar Flutter en el desarrollo móvil, así como la implementación de bibliotecas como Auth0 para la gestión de autenticación y las APIs de Google Maps, entre otras.';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    double textSize() {
      if (width < 500) return 13;
      if (width < 700) return 18;
      if (width < 1100) return 25;
      return 30;
    }

    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Stack de tecnologias',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Stack de tecnologias',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                stack,
                style: TextStyle(fontSize: textSize()),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Presentacion',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                presentation,
                style: TextStyle(fontSize: textSize()),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Experiencia Profecional',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Wrap(
                children: [
                  Text(
                    'Deep Skill Academy',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '2023 - Actualmente',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                experience,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
