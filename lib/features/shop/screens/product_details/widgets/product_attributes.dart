import 'package:e_store/common/widgets/chips/choice_chip.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/common/widgets/texts/product_price_text.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EProductAtrributes extends StatelessWidget {
  const EProductAtrributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        ERoundedContainer(
          padding: const EdgeInsets.all(ESizes.md),
          backgroundColor: dark ? EColors.darkGrey : EColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                /// Title , Price and Stock Status
                children: [
                  //Title
                  const ESectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(
                    width: ESizes.spaceBtwItems,
                  ),
                  //Price and Stock Status
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Price
                        Row(
                          children: [
                            const EProductTitleText(
                              title: 'Price : ',
                              smallSize: true,
                            ),
                            //Actual Price
                            Text('\$25',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .apply(
                                        decoration:
                                            TextDecoration.lineThrough)),
                            const SizedBox(
                              width: ESizes.spaceBtwItems,
                            ),
                            //Sale Price
                            const EProductPriceText(price: '20')
                          ],
                        ),

                        //Stock

                        Row(
                          children: [
                            const EProductTitleText(
                              title: 'Stock : ',
                              smallSize: true,
                            ),
                            Text(
                              'In Stock',
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ]),
                ],
              ),
              const EProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines .',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),

        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Column(
          children: [
            const ESectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'EU 40',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'EU 42',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: 'EU 44',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
