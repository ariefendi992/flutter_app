import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final double rating;
  const DestinationCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.city,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      padding: const EdgeInsets.all(10),
      width: 200,
      height: 323,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 54.5,
                height: 30,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultRadius),
                  ),
                ),
                child: Container(
                  // width: 24,
                  // height: 24,
                  margin: const EdgeInsets.only(right: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        size: 24,
                        color: kYellowColor,
                      ),
                      Text(
                        rating.toString(),
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(fontWeight: light),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
