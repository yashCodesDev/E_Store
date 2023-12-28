import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: ESpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(children: [
          //Image
          Image(
            image: AssetImage(image),
            width: EHelperFunctions.screenWidth() * 0.6,
          ),
          const SizedBox(
            height: ESizes.spaceBtwSections,
          ),

          // Titles & SubTitle
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),

          Text(
            subtitle,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: ESizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const LoginScreen(),
                    duration: const Duration(seconds: 0)),
                child: const Text(ETexts.eContinue)),
          ),
        ]),
      ),
    ));
  }
}
