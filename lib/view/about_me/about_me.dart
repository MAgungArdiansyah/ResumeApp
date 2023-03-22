import 'package:flutter/material.dart';
import 'package:resumeapp/style/style.dart';
import 'package:resumeapp/view/about_me/part/education.dart';
import 'package:resumeapp/view/about_me/part/skill.dart';

import 'part/experience.dart';
import 'part/introduction.dart';

class AboutMe extends StatelessWidget {
  static const routeName = '/aboutmepage';
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.all(24),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Introduction(size: size),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                  height: 220,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Skills',
                        style: lightTheme.bodyMedium,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: const <Widget>[
                          Skills(img: 'assets/python.png', name: 'Python'),
                          SizedBox(
                            width: 15,
                          ),
                          Skills(img: 'assets/dart.png', name: 'Dart'),
                          SizedBox(
                            width: 15,
                          ),
                          Skills(img: 'assets/flutter.png', name: 'Flutter')
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: const <Widget>[
                          Skills(img: 'assets/firebase.png', name: 'Firebase'),
                          SizedBox(
                            width: 15,
                          ),
                          Skills(img: 'assets/tableau.png', name: 'Tableau')
                        ],
                      )
                    ],
                  )),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
                child: Container(
              padding: const EdgeInsets.all(8),
              //color: Colors.blue,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Experiences',
                    style: lightTheme.bodyMedium,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Experience(
                    img: 'assets/unpak.png',
                    posisi: 'Asisten Praktikum Dosen',
                    perusahaan: 'Universitas Pakuan',
                    tahun: 'Jun 2018 - Jun 2021',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Experience(
                    img: 'assets/klhk.png',
                    posisi: 'IT Support (Magang)',
                    perusahaan: 'Kementrian LHK Bogor',
                    tahun: 'Agu 2020 - Sep 2020',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Experience(
                    img: 'assets/unpak.png',
                    posisi: 'koordinator Asisten Praktikum',
                    perusahaan: 'Universitas Pakuan',
                    tahun: 'Jun 2019 - Jun 2020',
                  )
                ],
              ),
            )),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Education',
                      style: lightTheme.bodyMedium,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Education(
                        img: 'assets/unpak.png',
                        jenjang: 'Universitas Pakuan',
                        jurusan: 'Ilmu Komputer S1',
                        tahun: '2017 - 2023'),
                    const SizedBox(
                      height: 25,
                    ),
                    const Education(
                        img: 'assets/sman5.png',
                        jenjang: 'SMA Negeri 5 Bogor',
                        jurusan: 'MIPA',
                        tahun: '2014 - 2017')
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
