import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_airplane.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 456),
              width: double.infinity,
              height: 319,
              decoration: BoxDecoration(
                // color: kWhiteColor,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.0, 0.45],
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.90),
                  ],
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly Like a Bird',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style: whiteTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 16,
                  height: 2.0,
                ),
              ),
              CustomButton(
                title: 'Get Started',
                margin: const EdgeInsets.only(top: 50, bottom: 80),
                width: 220,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-up', (route) => false);
                },
              ),
            ],
          ),
        )
      ],
    ));
  }
}
