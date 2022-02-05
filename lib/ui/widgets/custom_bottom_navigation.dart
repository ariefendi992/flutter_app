import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';

class CustomBottomNavigation extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const CustomBottomNavigation({
    Key? key,
    required this.imageUrl,
    this.isSelected = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        )
      ],
    );
  }
}
