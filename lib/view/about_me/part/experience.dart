import 'package:flutter/material.dart';

import '../../../style/style.dart';

class Experience extends StatelessWidget {
  final String img;
  final String posisi;
  final String perusahaan;
  final String tahun;

  const Experience(
      {super.key,
      required this.img,
      required this.posisi,
      required this.perusahaan,
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
              posisi,
              style: lightTheme.bodyMedium,
            ),
            Text(
              perusahaan,
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
