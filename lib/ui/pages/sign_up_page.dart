import 'package:flutter/material.dart';
import 'package:flutter_airplane_v2/shared/theme.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_button.dart';
import 'package:flutter_airplane_v2/ui/widgets/custom_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return const CustomFormField(
          lable: 'Full Name',
          hintText: 'Your Full Name',
        );
      }

      Widget emailInput() {
        return const CustomFormField(
          lable: 'Email Address',
          hintText: 'Your Email Address',
        );
      }

      Widget passwordInput() {
        return const CustomFormField(
          lable: 'Password',
          hintText: 'Your Password',
          obSecureText: true,
        );
      }

      Widget hobbyInput() {
        return const CustomFormField(
          lable: 'Hobby',
          hintText: 'Your Hobby',
        );
      }

      Widget getStartedButton() {
        return CustomButton(
          margin: const EdgeInsets.only(top: 10),
          title: 'Get Started',
          width: double.infinity,
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            getStartedButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
          margin: const EdgeInsets.only(top: 50, bottom: 73),
          child: Center(
            child: Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline,
              ),
            ),
          ));
    }

    return Scaffold(
      backgroundColor: kSilverColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
