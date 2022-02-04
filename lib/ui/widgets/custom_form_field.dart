import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String lable;
  final String hintText;
  final bool obSecureText;

  const CustomFormField({
    Key? key,
    required this.lable,
    required this.hintText,
    this.obSecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: blackTextStyle,
          ),
          const SizedBox(height: 6.0),
          TextFormField(
            obscureText: obSecureText ? true : false,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
