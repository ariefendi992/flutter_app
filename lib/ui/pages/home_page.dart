import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/widgets/destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_profil.png'),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                imageUrl: 'assets/image_destination_1.png',
                name: 'Lake Ciliwung',
                city: 'Tanggerang',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination_2.png',
                name: 'White Houses',
                city: 'Spain',
                rating: 4.7,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination_3.png',
                name: 'Hill Heyo',
                city: 'Monaco',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination_4.png',
                name: 'Menarra',
                city: 'Japan',
                rating: 5.0,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination_5.png',
                name: 'Payung Teduh',
                city: 'Singapore',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
      ],
    );
  }
}
