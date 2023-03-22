import 'package:flutter/material.dart';
import 'package:resumeapp/view/about_me/about_me.dart';
import 'package:resumeapp/style/style.dart';

class LandingPage extends StatelessWidget {
  static const routeName = '/landingpage';
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        SizedBox(
            height: size.height,
            width: size.width,
            child: const Image(
              image: AssetImage('assets/landingImg.jpg'),
              fit: BoxFit.cover,
            )),
        Container(
          height: size.height * 0.8,
          width: size.width,
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black, Colors.transparent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hi, I\'m',
                    style: lightTheme.displayLarge,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Muhammad Agung',
                    style: lightTheme.displayMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Freshgraduate',
                    style: lightTheme.displaySmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.grey.shade700,
                      onTap: () =>
                          Navigator.pushNamed(context, AboutMe.routeName),
                      child: Ink(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 155,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  shape: BoxShape.circle),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              ),
                            ),
                            Text(
                              'About Me',
                              style: lightTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
