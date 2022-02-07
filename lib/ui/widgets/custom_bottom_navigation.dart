import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/cubit/page_cubit.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomBottomNavigation({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          Container(
            height: 2,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              // color: context.read<PageCubit>().state == index
              //     ? kPrimaryColor
              //     : kTransparentColor,
            ),
          )
        ],
      ),
    );
  }
}
