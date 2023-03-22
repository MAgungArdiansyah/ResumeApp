import 'package:flutter/material.dart';

import '../../../style/style.dart';

class Introduction extends StatelessWidget {
  const Introduction({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.grey.shade700,
                onTap: () {},
                child: const Icon(
                  Icons.message,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.grey.shade700,
                onTap: () {},
                child: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          //padding: const EdgeInsets.all(8.0),
          height: 100,
          width: size.width,

          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/profile.jpg'),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Muhammad Agung',
                    style:
                        lightTheme.bodyLarge!.apply(fontSizeDelta: 3),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Freshgraduate',
                    style: lightTheme.bodyMedium!
                        .apply(color: Colors.white70),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.location_on,
                        color: Colors.white54,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Bogor, Jawa Barat',
                        style: lightTheme.bodySmall!
                            .apply(color: Colors.white54),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 70,
          width: size.width * 0.8,
          child: Text(
            'I am a fresh graduate who is highly curious in the world of programming, enjoys working together, respects rules and enthusiastic about learning new things.',
            style: lightTheme.bodySmall!.apply(color: Colors.white70),
            //textAlign: TextAlign.justify,
          ),
        ),
        Center(
          child: SizedBox(
            height: 40,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Image(
                  image: AssetImage(
                    'assets/gmail.png',
                  ),
                  fit: BoxFit.contain,
                  height: 20,
                  width: 20,
                ),
                Image(
                  image: AssetImage(
                    'assets/linkedin.png',
                  ),
                  fit: BoxFit.cover,
                  height: 20,
                  width: 20,
                ),
                Image(
                  image: AssetImage(
                    'assets/instagram.png',
                  ),
                  fit: BoxFit.contain,
                  height: 20,
                  width: 20,
                ),
                Image(
                  image: AssetImage(
                    'assets/wa.png',
                  ),
                  fit: BoxFit.cover,
                  height: 20,
                  width: 20,
                )
              ],
            ),
          ),
        ),
        // skils section
      ],
    );
  }
}