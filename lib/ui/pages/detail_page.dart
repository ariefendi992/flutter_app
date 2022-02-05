import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_button.dart';
import 'package:flutter_airplane_v2/ui/widgets/interests_item.dart';
import 'package:flutter_airplane_v2/ui/widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_destination_1.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        margin: const EdgeInsets.only(top: 236),
        width: double.infinity,
        height: 214,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [
              //   0.0,
              //   0.90
              // ],
              colors: [
                kBlackColor.withOpacity(0.0),
                Colors.black.withOpacity(0.80),
              ]),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        child: Column(
          children: [
            // NOTE : EMBLEM
            Container(
              width: 108,
              height: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),

            // NOTE : TITLE
            Container(
              margin: const EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Tanggerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: kYellowColor,
                    size: 26,
                  ),
                  const SizedBox(width: 1),
                  Text(
                    '4.8',
                    style: whiteTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ),

            // NOTE: About
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Berada di jalur jalan provinsi yang\nmenghubungkan Denpasar\nSingaraja serta letaknya yang dekat\ndengan Kebun Raya Eka Karya\nmenjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(height: 1.8),
                  ),
                  const SizedBox(height: 20),

                  // NOTE: PHOTOS
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: const [
                      PhotoItem(imageUrl: 'assets/photo_1.png'),
                      PhotoItem(imageUrl: 'assets/photo_2.png'),
                      PhotoItem(imageUrl: 'assets/photo_3.png'),
                    ],
                  ),

                  // NOTE : INTERESTS
                  const SizedBox(height: 20),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      InterestsItem(
                        title: 'Kids Park',
                      ),
                      InterestsItem(
                        title: 'Honor Bridge',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      InterestsItem(
                        title: 'City Museum',
                      ),
                      InterestsItem(
                        title: 'Central Mall',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // NOTE: BOOK NOW
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                    title: 'Book Now',
                    width: 170,
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kSilverColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
