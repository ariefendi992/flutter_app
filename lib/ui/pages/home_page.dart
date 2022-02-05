import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/pages/detail_page.dart';
import 'package:flutter_airplane_v2/ui/widgets/destination_card.dart';
import 'package:flutter_airplane_v2/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 20),
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

    Widget popularDestinations() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailPage(),
            ),
          );
        },
        child: Container(
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
        ),
      );
    }

    Widget newDestinations() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailPage(),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 30,
            left: defaultMargin,
            right: defaultMargin,
            bottom: 150,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New This Year',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              const DestinationTile(
                name: 'Danau Beratan',
                imageUrl: 'assets/image_destination_6.png',
                city: 'Bali',
                rating: 4.5,
              ),
              const DestinationTile(
                name: 'Sydney Opera',
                imageUrl: 'assets/image_destination_7.png',
                city: 'Australia',
                rating: 4.7,
              ),
              const DestinationTile(
                name: 'Roma',
                imageUrl: 'assets/image_destination_8.png',
                city: 'Italy',
                rating: 4.8,
              ),
              const DestinationTile(
                name: 'Payung Teduh',
                imageUrl: 'assets/image_destination_5.png',
                city: 'Singapore',
                rating: 4.8,
              ),
              const DestinationTile(
                name: 'Hill Hey',
                imageUrl: 'assets/image_destination_3.png',
                city: 'Monaco',
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
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
