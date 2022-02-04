import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final EdgeInsets margin;
  final String title;
  final double width;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    this.margin = EdgeInsets.zero,
    required this.title,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 50, bottom: 80),
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      width: width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
