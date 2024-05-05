import 'package:cv_online/features/widgets/tech_card.dart';
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stack de tecnologias',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Wrap(spacing: 10, children: [
                  TechCard(
                    url:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flutter_logo.svg/2048px-Flutter_logo.svg.png',
                    title: 'Flutter',
                  ),
                  TechCard(
                    url:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQCCMzrp_Jt-DwwqXUaN4LfCjk2jMnx5S7JZefzb2piQ&s',
                    title: 'Nest.js',
                  ),
                  TechCard(
                    url:
                        'https://www.dongee.com/tutoriales/content/images/2022/12/image-82.png',
                    title: 'Next.js',
                  ),
                  TechCard(
                    url:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Typescript_logo_2020.svg/1200px-Typescript_logo_2020.svg.png',
                    title: 'Typescript',
                  ),
                  TechCard(
                    url:
                        'https://google.github.io/sqlcommenter/images/sequelize-logo.png',
                    title: 'Sequelize',
                  ),
                  TechCard(
                    url:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMiFM83KD7KOPehUHJO40xVG2AVXSryNDpivND2hRGjg&s',
                    title: 'PostgreSQL',
                  )
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
