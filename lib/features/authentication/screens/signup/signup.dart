import 'package:e_store/common/widgets/login_signup/form_divider.dart';
import 'package:e_store/common/widgets/login_signup/social_buttons.dart';
import 'package:e_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? EColors.light : EColors.dark),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ETexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              // Form

              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              const ESignupForm(),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              // Divider
              EFormDivider(dividerText: ETexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              // Social icon

              const ESocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
