import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/pages/home_page.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget buildContent() {
    return const HomePage();
  }

  Widget _customButtonNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: 30,
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomBottomNavigation(
              imageUrl: 'assets/icon_home.png',
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_transaction.png',
              isSelected: false,
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_wallet.png',
              isSelected: false,
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_settings.png',
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSilverColor,
      body: Stack(
        children: [
          buildContent(),
          _customButtonNavigation(),
        ],
      ),
    );
  }
}
