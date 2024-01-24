import 'package:e_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/common/widgets/images/e_circular_image.dart';
import 'package:e_store/common/widgets/texts/e_brand_title_text_with_vertical_icon.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBrandCard extends StatelessWidget {
  const EBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ERoundedContainer(
        padding: const EdgeInsets.all(ESizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ECircularImage(
              image: EImages.adidasLogo,
              isNetworkImage: false,
              overlayColor: EHelperFunctions.isDarkMode(context)
                  ? EColors.white
                  : EColors.black,
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(width: ESizes.spaceBtwItems / 2),

            /// -- Text
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const EBrandTitleWithVerifiedIcon(
                  title: 'Adidas',
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  '256 products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}