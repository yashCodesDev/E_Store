import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductImageSlider extends StatelessWidget {
  const EProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ECurvedEdgeWidget(
      child: Container(
        color: dark ? EColors.darkerGrey : EColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(ESizes.productImageRadius * 2),
                  child: Center(
                      child: Image(image: AssetImage(EImages.productImage5))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: ESizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: ESizes.spaceBtwItems),
                  itemCount: 6,
                  itemBuilder: (_, index) => ERoundedImage(
                    width: 80,
                    imageUrl: EImages.productImage3,
                    backgroundColor: dark ? EColors.dark : EColors.white,
                    border: Border.all(color: EColors.primary),
                    padding: const EdgeInsets.all(ESizes.sm),
                  ),
                ),
              ),
            ),

            /// Appbar Icons

            const EAppbar(
              showBackArrow: true,
              actions: [
                ECircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
