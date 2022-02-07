import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_button.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSilverColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_booking.png',
              height: 150,
              width: 299,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                height: 2,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'My Bookings',
              width: 220,
              margin: const EdgeInsets.only(top: 50),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
