import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EVerticalImageText extends StatelessWidget {
  const EVerticalImageText({
    super.key,
    required this.onTap,
    this.backGroundColor,
    required this.image,
    required this.textColor,
    required this.title,
  });

  final void Function()? onTap;
  final Color? backGroundColor;
  final String image, title;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ESizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ESizes.sm),
              decoration: BoxDecoration(
                  color: backGroundColor ??
                      (EHelperFunctions.isDarkMode(context)
                          ? EColors.dark
                          : EColors.light),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: EHelperFunctions.isDarkMode(context)
                      ? EColors.light
                      : EColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
