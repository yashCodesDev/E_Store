import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EBottomAddToCart extends StatelessWidget {
  const EBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: ESizes.defaultSpace, vertical: ESizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? EColors.darkerGrey : EColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(ESizes.cardRadiusLg),
            topRight: Radius.circular(ESizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ECircularIcon(
                backgroundColor: EColors.darkGrey,
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                color: EColors.white,
              ),
              const SizedBox(
                width: ESizes.spaceBtwItems,
              ),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(
                width: ESizes.spaceBtwItems,
              ),
              const ECircularIcon(
                backgroundColor: EColors.black,
                icon: Iconsax.add,
                width: 40,
                height: 40,
                color: EColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(ESizes.md),
                  backgroundColor: EColors.black,
                  side: const BorderSide(color: EColors.black)),
              child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
