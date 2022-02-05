import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';

class InterestsItem extends StatelessWidget {
  final String title;
  const InterestsItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(title, style: blackTextStyle),
        ],
      ),
    );
  }
}
