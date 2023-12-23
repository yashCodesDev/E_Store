import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo , title & Sub-title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 150,
                      image: AssetImage(
                          dark ? EImages.lightAppLogo : EImages.darkAppLogo)),
                  Text(
                    ETexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: ESizes.sm,
                  ),
                  Text(
                    ETexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),

              /// FORM

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: ESizes.spaceBtwSections),
                child: Form(
                  child: Column(
                    children: [
                      ///Email
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: ETexts.email),
                      ),
                      const SizedBox(
                        height: ESizes.spaceBtwInputFields,
                      ),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: ETexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
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
                              onPressed: () {},
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
                              onPressed: () {},
                              child: const Text(ETexts.signIn))),

                      const SizedBox(
                        height: ESizes.spaceBtwItems,
                      ),

                      /// Create Account Button

                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(ETexts.createAccount)),
                      ),
                      const SizedBox(
                        height: ESizes.spaceBtwSections,
                      ),
                    ],
                  ),
                ),
              ),

              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? EColors.darkGrey : EColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    ETexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? EColors.darkGrey : EColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: ESizes.spaceBtwSections),

              ///Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: EColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(EImages.google),
                          width: ESizes.iconMd,
                          height: ESizes.iconMd,
                        )),
                  ),
                  const SizedBox(
                    width: ESizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: EColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(EImages.facebook),
                          width: ESizes.iconMd,
                          height: ESizes.iconMd,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
