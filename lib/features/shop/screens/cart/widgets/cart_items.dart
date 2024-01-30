import 'package:e_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_store/common/widgets/products/cart/cart_item.dart';
import 'package:e_store/common/widgets/texts/product_price_text.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECartItems extends StatelessWidget {
  const ECartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                const ECartItem(),
                if (showAddRemoveButtons)
                  const SizedBox(height: ESizes.spaceBtwItems),

                /// Add Remove Button Row with total Price
                if (showAddRemoveButtons)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 70),

                          /// Add Remove Buttons
                          EProductQuantityWithAddRemove(),
                        ],
                      ),
                      EProductPriceText(price: '256')
                    ],
                  )
              ],
            ),
        separatorBuilder: (_, __) => const SizedBox(
              height: ESizes.spaceBtwSections,
            ),
        itemCount: 2);
  }
}
