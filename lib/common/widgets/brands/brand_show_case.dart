import 'package:e_store/common/widgets/brands/e_brand_card.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBrandShowcase extends StatelessWidget {
  const EBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
      showBorder: true,
      borderColor: EColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      padding: const EdgeInsets.all(ESizes.md),
      child: Column(
        children: [
          /// Brands with Products Count
          const EBrandCard(showBorder: false),

          const SizedBox(height: ESizes.spaceBtwItems),

          /// Brand Top 3 Product Images
          Row(
              children: images
                  .map((image) => brandTopProductWidget(image, context))
                  .toList())
        ],
      ),
    );
  }
}

Widget brandTopProductWidget(String image, context) {
  return Expanded(
    child: ERoundedContainer(
      height: 100,
      backgroundColor: EHelperFunctions.isDarkMode(context)
          ? EColors.darkerGrey
          : EColors.light,
      margin: const EdgeInsets.only(right: ESizes.sm),
      padding: const EdgeInsets.all(ESizes.md),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ),
  );
}
