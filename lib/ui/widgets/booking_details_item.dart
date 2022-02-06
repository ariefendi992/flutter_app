import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String item;
  final Color color;

  const BookingDetailItem({
    Key? key,
    required this.title,
    required this.item,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(title, style: blackTextStyle),
          const Spacer(),
          Text(
            item,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
