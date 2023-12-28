import 'package:e_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_store/features/authentication/screens/signup/signup.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: ETexts.email,
                labelStyle:
                    TextStyle(color: dark ? EColors.light : EColors.dark),
                floatingLabelStyle:
                    TextStyle(color: dark ? EColors.light : EColors.dark),
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: ETexts.password,
                labelStyle:
                    TextStyle(color: dark ? EColors.light : EColors.dark),
                suffixIcon: const Icon(Iconsax.eye_slash),
                floatingLabelStyle:
                    TextStyle(color: dark ? EColors.light : EColors.dark),
              ),
            ),

            const SizedBox(
              height: ESizes.spaceBtwInputFields / 2,
            ),
            // Remember Me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ETexts.rememberMe),
                  ],
                ),

                //Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword(),
                        duration: const Duration(seconds: 0)),
                    child: const Text(ETexts.forgetPassword)),
              ],
            ),
            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            //Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const NavigationMenu(),
                        duration: const Duration(seconds: 0)),
                    child: const Text(ETexts.signIn))),

            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            /// Create Account Button

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUpScreen(),
                      duration: const Duration(seconds: 0)),
                  child: const Text(ETexts.createAccount)),
            ),
            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),
          ],
        ),
      ),
    );
  }
}
