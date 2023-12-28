import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ETermsAndConditionCheckBox extends StatelessWidget {
  const ETermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return SingleChildScrollView(
      child: Row(
        children: [
          SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(value: true, onChanged: (value) {})),
          const SizedBox(
            width: ESizes.spaceBtwItems,
          ),
          Flexible(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${ETexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${ETexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? EColors.white : EColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? EColors.white : EColors.primary)),
              TextSpan(
                  text: '${ETexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: ETexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? EColors.white : EColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? EColors.white : EColors.primary))
            ])),
          )
        ],
      ),
    );
  }
}
