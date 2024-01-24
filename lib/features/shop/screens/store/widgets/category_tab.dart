import 'package:e_store/common/layouts/e_grid_layout.dart';
import 'package:e_store/common/widgets/brands/brand_show_case.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              children: [
                /// Brands
                const EBrandShowcase(images: [
                  EImages.productImage3,
                  EImages.productImage2,
                  EImages.productImage1
                ]),
                const EBrandShowcase(images: [
                  EImages.productImage3,
                  EImages.productImage2,
                  EImages.productImage1
                ]),

                const SizedBox(
                  height: ESizes.spaceBtwItems,
                ),
                ESectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: ESizes.spaceBtwItems,
                ),

                EGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const EProductCardVertical()),
                const SizedBox(
                  height: ESizes.spaceBtwSections,
                )
              ],
            ),
          ),
        ]);
  }
}
