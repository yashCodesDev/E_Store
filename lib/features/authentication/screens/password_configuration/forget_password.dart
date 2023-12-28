import 'package:e_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Headings
              Text(
                ETexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              Text(
                ETexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections * 2,
              ),

              ///Text field
              TextFormField(
                decoration: InputDecoration(
                    labelText: ETexts.email,
                    labelStyle:
                        TextStyle(color: dark ? EColors.light : EColors.dark),
                    floatingLabelStyle:
                        TextStyle(color: dark ? EColors.light : EColors.dark),
                    prefixIcon: const Icon(Iconsax.direct_right)),
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              ///Submit Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.offAll(() => const ResetPassword(),
                          duration: const Duration(seconds: 0)),
                      child: const Text(ETexts.submit)))
            ],
          ),
        ),
      ),
    );
  }
}
