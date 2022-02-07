import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/cubit/page_cubit.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/pages/home_page.dart';
import 'package:flutter_airplane_v2/ui/pages/setting_page.dart';
import 'package:flutter_airplane_v2/ui/pages/transcaction_page.dart';
import 'package:flutter_airplane_v2/ui/pages/wallet_page.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_bottom_navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
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
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigation(
                index: 1,
                imageUrl: 'assets/icon_transaction.png',
              ),
              CustomBottomNavigation(
                index: 2,
                imageUrl: 'assets/icon_wallet.png',
              ),
              CustomBottomNavigation(
                index: 3,
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kSilverColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              _customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
