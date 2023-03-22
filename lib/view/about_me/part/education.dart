import 'package:flutter/material.dart';

import '../../../style/style.dart';

class Education extends StatelessWidget {
  final String img;
  final String jenjang;
  final String jurusan;
  final String tahun;

  const Education(
      {super.key,
      required this.img,
      required this.jenjang,
      required this.jurusan,
      required this.tahun});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 20,
        ),
        Image(
          height: 50,
          width: 50,
          image: AssetImage(img),
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jenjang,
              style: lightTheme.bodyMedium,
            ),
            Text(
              jurusan,
              style: lightTheme.bodySmall,
            ),
            Text(
              tahun,
              style: lightTheme.bodySmall,
            )
          ],
        )
      ],
    );
  }
}