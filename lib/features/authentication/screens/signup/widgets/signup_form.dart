import 'package:e_store/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ESignupForm extends StatelessWidget {
  const ESignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: ETexts.firstName,
                    labelStyle:
                        TextStyle(color: dark ? EColors.light : EColors.dark),
                    prefixIcon: const Icon(Iconsax.user),
                    floatingLabelStyle:
                        TextStyle(color: dark ? EColors.light : EColors.dark),
                  ),
                ),
              ),
              const SizedBox(
                width: ESizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: ETexts.lastName,
                    labelStyle:
                        TextStyle(color: dark ? EColors.light : EColors.dark),
                    prefixIcon: const Icon(Iconsax.user),
                    floatingLabelStyle:
                        TextStyle(color: dark ? EColors.light : EColors.dark),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),

          //Username

          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: ETexts.username,
              prefixIcon: const Icon(Iconsax.user_edit),
              labelStyle: TextStyle(color: dark ? EColors.light : EColors.dark),
              floatingLabelStyle:
                  TextStyle(color: dark ? EColors.light : EColors.dark),
            ),
          ),
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),

          // Email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: ETexts.email,
              prefixIcon: const Icon(Iconsax.direct),
              labelStyle: TextStyle(color: dark ? EColors.light : EColors.dark),
              floatingLabelStyle:
                  TextStyle(color: dark ? EColors.light : EColors.dark),
            ),
          ),

          //Phone Number
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),

          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: ETexts.phoneNo,
                prefixIcon: const Icon(Iconsax.call),
                floatingLabelStyle:
                    TextStyle(color: dark ? EColors.light : EColors.dark),
                labelStyle:
                    TextStyle(color: dark ? EColors.light : EColors.dark)),
          ),

          // Password
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),

          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: ETexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: const Icon(Iconsax.eye_slash),
                floatingLabelStyle:
                    TextStyle(color: dark ? EColors.light : EColors.dark),
                labelStyle:
                    TextStyle(color: dark ? EColors.light : EColors.dark)),
          ),
          const SizedBox(
            height: ESizes.spaceBtwSections,
          ),

          // Terms and Conditions Checkbox
          const ETermsAndConditionCheckBox(),
          const SizedBox(
            height: ESizes.spaceBtwSections,
          ),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(ETexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
