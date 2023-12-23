import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(
                top: ESizes.appBarHeight,
                left: ESizes.defaultSpace,
                bottom: ESizes.defaultSpace,
                right: ESizes.defaultSpace)),
      ),
    );
  }
}
