import 'package:flutter/material.dart';

import '../../../style/style.dart';

class Skills extends StatelessWidget {
  final String img;
  final String name;

  const Skills({
    super.key,
    required this.img,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 75,
      width: 75,
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            height: 25,
            width: 25,
            image: AssetImage(img),
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: lightTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
